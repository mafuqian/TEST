package scripts.ccrs.todo

import groovy.transform.EqualsAndHashCode

import com.gingkoo.data.compute.api.bean.Result
import com.gingkoo.data.compute.impl.support.ComputeScript
import com.gingkoo.root.annotation.Languages.SQL
import com.gingkoo.root.facility.string.UuidHelper
import com.google.common.graph.GraphBuilder
import com.google.common.graph.MutableGraph

import static com.gingkoo.root.facility.collection.GraphHelper.allSuccessors
import static com.gingkoo.root.facility.database.sql.SqlHelper.cleanSpaces
import static com.gingkoo.root.facility.datetime.ImmutableDateFormat.SIMPLE_DATE
import static com.gingkoo.root.facility.datetime.ImmutableDateFormat.SIMPLE_DATE_TIME
import static com.gingkoo.root.facility.string.StringHelper.TRIM_COMMA_SPLITTER
import static com.gingkoo.root.groovy.bean.BeanHelper.populateIgnoreCase

class InitializeTodoCfgTask implements ComputeScript {

    Result call() {
        // 获取所有分支机构信息
        Map<String, Branch> branches = new LinkedHashMap<>()
        sql.eachRow(cleanSpaces("""
                SELECT CORP_ID corpId, BRCODE, BRNO, BRNAME, BRCLASS,
                       BLN_UP_BRCODE blnUpBrCode, BUSINESS_LINE businessLine
                  FROM GP_BM_BRANCH""")) {
            def branch = populateIgnoreCase(it.toRowResult(), Branch.class)
            branches.put(branch.brno, branch)
        }

        // 构建分支机构图表
        MutableGraph<Branch> branchGraph = GraphBuilder.directed().build()
        branches.values().each {
            branchGraph.addNode(it)

            Branch parent = branches[it.blnUpBrcode]
            if (parent) {
                branchGraph.putEdge(parent, it)
            }
        }

        // 获取所有报表信息
        Map<String, Report> reports = new LinkedHashMap<>()
        sql.eachRow("SELECT REPORT_CODE code, REPORT_NAME name FROM CCRS_BM_RPT_CFG") {
            def report = populateIgnoreCase(it.toRowResult(), Report.class)
            reports.put(report.code, report)
        }

        // 获取业务条线信息
        sql.eachRow("SELECT REPORT_CODE, BUSINESS_LINE FROM CCRS_BM_RPT_DEPART_REL") {
            Report report = reports[it.REPORT_CODE]
            if (report) {
                report.businessLines << it.BUSINESS_LINE
            }
        }

        def now = new Date()
        def date = SIMPLE_DATE.format(now)
        def time = SIMPLE_DATE_TIME.format(now)

        // 标记所有记录为旧有纪录
        // noinspection SqlWithoutWhere
        sql.executeUpdate("UPDATE CCRS_BM_TODO_TASK_CFG SET RSV2 = ''")

        branches.values().each { branch ->
            // 过滤上报行
            if (branch.brclass != "2") {
                return
            }

            reports.values().each { report ->
                // 添加主任务
                String taskId = generateConfig(branch, report, null, null, date, time)

                allSuccessors(branchGraph, branch).each { child ->
                    child.businessLines.intersect(report.businessLines).each { businessLine ->
                        // 添加子任务
                        generateConfig(child, report, businessLine, taskId, date, time)
                    }
                }
            }
        }

        // 删除旧有纪录
        sql.executeUpdate("DELETE FROM CCRS_BM_TODO_TASK_CFG WHERE RSV2 IS NULL")

        return Result.OK
    }

    private String generateConfig(Branch branch, Report report, String businessLine,
                                  String parent, String date, String time) {
        String taskType = parent ? "1" : "0"

        @SQL
        String old = """
                SELECT DATA_ID, TASK_ID, RSV1
                  FROM CCRS_BM_TODO_TASK_CFG
                 WHERE REPORT_ORG_ID = :brcode
                   AND OPERATION_ORG_ID = :brcode
                   AND REPORT_CODE = :reportCode
                   AND TASK_TYPE = :taskType"""
        if (businessLine) {
            old += " AND BUSINESS_LINE = :businessLine"
        }

        def row = sql.firstRow(cleanSpaces(old),
                brcode: branch.brcode, reportCode: report.code, taskType: taskType, businessLine: businessLine)
        def taskId

        if (row) {
            taskId = row.TASK_ID
            def rsv1 = row.RSV1 ?: "1"
            sql.executeUpdate(cleanSpaces("""
                    UPDATE CCRS_BM_TODO_TASK_CFG
                       SET RSV1 = :rsv1,
                           RSV2 = 'SYS_EXISTS'
                     WHERE DATA_ID = :dataId"""),
                    rsv1: rsv1, dataId: row.DATA_ID)

        } else {
            taskId = UuidHelper.randomCleanUpper()
            def taskName = branch.brname + (parent ? "-补录子任务" : "-审核主任务")
            // FIXME: 此处暂时将主任务和子任务的状态都改为00
            sql.executeUpdate(cleanSpaces("""
                    INSERT INTO CCRS_BM_TODO_TASK_CFG (
                            DATA_ID, DATA_DATE, CORP_ID, TASK_MODULE, TASK_ID, TASK_NAME, TASK_STATUS, TASK_TYPE,
                            P_TASK_ID, REPORT_ORG_ID, OPERATION_ORG_ID, BUSINESS_LINE, REPORT_CODE, REMARKS,
                            NEXT_ACTION, DATA_CRT_USER, DATA_CRT_DATE, DATA_CRT_TIME, RSV1, RSV2
                    ) VALUES (
                            :taskId, :date, :corpId, 'CCRS', :taskId, :taskName, :status, :taskType,
                            :parent, :orgId, :orgId, :businessLine, :reportCode, :reportName,
                            :nextAction, 'SYS', :date, :time, '1', 'SYS_EXISTS'
                    )"""),
                    corpId: branch.corpId, orgId: branch.brcode, date: date, time: time,
                    taskId: taskId, taskName: taskName, taskType: taskType, parent: parent, businessLine: businessLine,
                    reportCode: report.code, reportName: report.name, status: "00", nextAction: "00")
        }

        return taskId
    }

    @EqualsAndHashCode(includes = "brno")
    private static class Branch {
        String corpId
        String brcode
        String brno
        String brname
        String brclass
        String blnUpBrcode
        String businessLine
        @Lazy
        Set<String> businessLines = {
            businessLine == null ? [] : TRIM_COMMA_SPLITTER.splitToList(businessLine)
        }()
    }

    private static class Report {
        String code
        String name
        Set<String> businessLines = []
    }
}
