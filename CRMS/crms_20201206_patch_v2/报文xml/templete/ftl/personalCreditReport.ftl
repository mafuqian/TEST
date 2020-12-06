<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>个人信用报告</title>
    <style type="text/css">
        body {
            margin-left: 45px;
            margin-right: 45px;
            font-family: SimSun;
            font-size: 10px;
        }

        table {
            margin: auto;
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #444444;
        }

        th, td {
            border-top: 1px solid #444444;
            border-bottom: 1px solid #444444;
            font-size: 10px;
            margin-left: 5px;
        }

        .title_right p {
            text-align: left;
            margin: 0;
            margin-left: 50%;
            padding: 0;
        }

        .div_border {
            border: 1px solid
        }

    </style>
</head>
<body>
<h1 align="center">个人信用报告</h1>
<#if (mbtPb01?? || mbtPb02?? || mbtPb03List?? || mbtPb04List??)>
    <div class="div_border">
        <h3>个人基本信息</h3>
        <br/>
        <#if (mbtPb01??)>
            <div>
                <p>身份信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>性别</th>
                        <th>出生日期</th>
                        <th>学历</th>
                        <th>学位</th>
                        <th>就业状况</th>
                        <th>电子邮箱</th>
                        <th>通讯地址</th>
                        <th>国籍</th>
                        <th>户籍地址</th>
                        <#if (mbtPb01b??)>
                            <th>手机号码</th>
                            <th>信息更新日期</th>
                        </#if>
                    </tr>
                    <tr>
                        <td>${mbtPb01.pB01AD01?if_exists}</td>
                        <td>${mbtPb01.pB01AR01?if_exists}</td>
                        <td>${mbtPb01.pB01AD02?if_exists}</td>
                        <td>${mbtPb01.pB01AD03?if_exists}</td>
                        <td>${mbtPb01.pB01AD04?if_exists}</td>
                        <td>${mbtPb01.pB01AQ01?if_exists}</td>
                        <td>${mbtPb01.pB01AQ02?if_exists}</td>
                        <td>${mbtPb01.pB01AD05?if_exists}</td>
                        <td>${mbtPb01.pB01AQ03?if_exists}</td>
                        <#if (mbtPb01b??)>
                            <td>${mbtPb01b.pB01BQ01?if_exists}</td>
                            <td>${mbtPb01b.pB01BR01?if_exists}</td>
                        </#if>
                    </tr>
                </table>
            </div>
        </#if>
        <#if (mbtPb02??)>
            <div>
                <p>婚姻信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>婚姻状况</th>
                        <th>配偶姓名</th>
                        <th>配偶证件类型</th>
                        <th>配偶证件号码</th>
                        <th>配偶工作单位</th>
                        <th>配偶联系电话</th>
                    </tr>
                    <tr>
                        <td>${mbtPb02.pB020D01?if_exists}</td>
                        <td>${mbtPb02.pB020Q01?if_exists}</td>
                        <td>${mbtPb02.pB020D02?if_exists}</td>
                        <td>${mbtPb02.pB020I01?if_exists}</td>
                        <td>${mbtPb02.pB020Q02?if_exists}</td>
                        <td>${mbtPb02.pB020Q03?if_exists}</td>
                    </tr>
                </table>
            </div>
        </#if>
        <#if (mbtPb03List??)>
            <div>
                <p>居住信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>居住状况</th>
                        <th>居住地址</th>
                        <th>住宅电话类型</th>
                        <th>信息更新日期号码</th>
                    </tr>
                    <#list mbtPb03List as mbtPb03>
                        <tr>
                            <td>${mbtPb03.pB030D01?if_exists}</td>
                            <td>${mbtPb03.pB030Q01?if_exists}</td>
                            <td>${mbtPb03.pB030Q02?if_exists}</td>
                            <td>${mbtPb03.pB030R01?if_exists}</td>
                        </tr>
                    </#list>
                </table>

            </div>
        </#if>
        <#if (mbtPb04List??)>
            <div>
                <p>职业信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>就业状况</th>
                        <th>工作单位</th>
                        <th>单位性质</th>
                        <th>行业</th>
                        <th>单位地址</th>
                        <th>单位电话</th>
                        <th>职业</th>
                        <th>职务</th>
                        <th>职称</th>
                        <th>进入本单位年份</th>
                        <th>信息更新日期</th>
                    </tr>
                    <#list mbtPb04List as mbtPb04>
                        <tr>
                            <td>${mbtPb04.pB040D01?if_exists}</td>
                            <td>${mbtPb04.pB040Q01?if_exists}</td>
                            <td>${mbtPb04.pB040D02?if_exists}</td>
                            <td>${mbtPb04.pB040D03?if_exists}</td>
                            <td>${mbtPb04.pB040Q02?if_exists}</td>
                            <td>${mbtPb04.pB040Q03?if_exists}</td>
                            <td>${mbtPb04.pB040D04?if_exists}</td>
                            <td>${mbtPb04.pB040D05?if_exists}</td>
                            <td>${mbtPb04.pB040D06?if_exists}</td>
                            <td>${mbtPb04.pB040R01?if_exists}</td>
                            <td>${mbtPb04.pB040R02?if_exists}</td>
                        </tr>
                    </#list>
                </table>
            </div>
        </#if>
    </div>
</#if>
<br/>
<#if (mbtPc01?? || mbtPc02?? || mbtPc02a?? || mbtPc02d?? || mbtPc02k?? || mbtPc040??)>
    <div class="div_border">
        <h3>信息概要</h3>
        <br/>
        <#if (mbtPc01??)>
            <div>
                <p>评分信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>数字解读</th>
                        <th>相对位置</th>
                        <th>分数说明条数</th>
                        <th>分数说明</th>
                    </tr>
                    <tr>
                        <td>${mbtPc01.pC010Q01?if_exists}</td>
                        <td>${mbtPc01.pC010Q02?if_exists}</td>
                        <td>${mbtPc01.pC010S01?if_exists}</td>
                        <td>${mbtPc01.pC010D01?if_exists}</td>
                    </tr>
                </table>
            </div>
        </#if>
        <#if (mbtPc02?? || mbtPc02a?? || mbtPc02d?? || mbtPc02k?? )>
            <div>
                <p>信贷交易信息概要信息</p>
                <#if (mbtPc02a??)>
                    <h4>信息交易提示信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>账户数合计</th>
                            <th>业务类型数量</th>
                            <th>业务类型</th>
                            <th>业务大类</th>
                            <th>账户数合计</th>
                            <th>首笔业务发放月份</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02a.pC02AS01?if_exists}</td>
                            <td>${mbtPc02a.pC02AS02?if_exists}</td>
                            <td>${mbtPc02a.pC02AD01?if_exists}</td>
                            <td>${mbtPc02a.pC02AD02?if_exists}</td>
                            <td>${mbtPc02a.pC02AS03?if_exists}</td>
                            <td>${mbtPc02a.pC02AR01?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02b??)>
                    <h4>被追偿汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>账户数合计</th>
                            <th>余额合计</th>
                            <th>业务类型数量</th>
                            <th>业务类型</th>
                            <th>账户数</th>
                            <th>余额</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02b.pC02BS01?if_exists}</td>
                            <td>${mbtPc02b.pC02BJ01?if_exists}</td>
                            <td>${mbtPc02b.pC02BS02?if_exists}</td>
                            <td>${mbtPc02b.pC02BD01?if_exists}</td>
                            <td>${mbtPc02b.pC02BS03?if_exists}</td>
                            <td>${mbtPc02b.pC02BJ02?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02??)>
                    <h4>呆账汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>账户数</th>
                            <th>余额</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02.pC02CS01?if_exists}</td>
                            <td>${mbtPc02.pC02CJ01?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02d??)>
                    <h4>逾期(透支)汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>账户类型数量</th>
                            <th>账户类型</th>
                            <th>账户数</th>
                            <th>月份数</th>
                            <th>单月最高逾期(透支)总额</th>
                            <th>最长逾期(透支)月数</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02d.pC02DS01?if_exists}</td>
                            <td>${mbtPc02d.pC02DD01?if_exists}</td>
                            <td>${mbtPc02d.pC02DS02?if_exists}</td>
                            <td>${mbtPc02d.pC02DS03?if_exists}</td>
                            <td>${mbtPc02d.pC02DJ01?if_exists}</td>
                            <td>${mbtPc02d.pC02DS04?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02??)>
                    <h4>非循环贷账户汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>管理机构数</th>
                            <th>账户数</th>
                            <th>授信总额</th>
                            <th>余额</th>
                            <th>最近6个月平均应还款</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02.pC02ES01?if_exists}</td>
                            <td>${mbtPc02.pC02ES02?if_exists}</td>
                            <td>${mbtPc02.pC02EJ01?if_exists}</td>
                            <td>${mbtPc02.pC02EJ02?if_exists}</td>
                            <td>${mbtPc02.pC02EJ03?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02??)>
                    <h4>循环贷账户汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>管理机构数</th>
                            <th>账户数</th>
                            <th>授信总额</th>
                            <th>余额</th>
                            <th>最近6个月平均应还款</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02.pC02GS01?if_exists}</td>
                            <td>${mbtPc02.pC02GS02?if_exists}</td>
                            <td>${mbtPc02.pC02GJ01?if_exists}</td>
                            <td>${mbtPc02.pC02GJ02?if_exists}</td>
                            <td>${mbtPc02.pC02GJ03?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02??)>
                    <h4>贷记卡账户汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>发卡机构数</th>
                            <th>账户数</th>
                            <th>授信总额</th>
                            <th>单家行最高授信额</th>
                            <th>单家行最低授信额</th>
                            <th>已用额度</th>
                            <th>最近6个月平均使用额度</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02.pC02HS01?if_exists}</td>
                            <td>${mbtPc02.pC02HS02?if_exists}</td>
                            <td>${mbtPc02.pC02HJ01?if_exists}</td>
                            <td>${mbtPc02.pC02HJ02?if_exists}</td>
                            <td>${mbtPc02.pC02HJ03?if_exists}</td>
                            <td>${mbtPc02.pC02HJ04?if_exists}</td>
                            <td>${mbtPc02.pC02HJ05?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02??)>
                    <h4>准贷记卡账户汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>发卡机构数</th>
                            <th>账户数</th>
                            <th>授信总额</th>
                            <th>单家行最高授信额</th>
                            <th>单家行最低授信额</th>
                            <th>已用额度</th>
                            <th>最近6个月平均透支余额</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02.pC02IS01?if_exists}</td>
                            <td>${mbtPc02.pC02IS02?if_exists}</td>
                            <td>${mbtPc02.pC02IJ01?if_exists}</td>
                            <td>${mbtPc02.pC02IJ02?if_exists}</td>
                            <td>${mbtPc02.pC02IJ03?if_exists}</td>
                            <td>${mbtPc02.pC02IJ04?if_exists}</td>
                            <td>${mbtPc02.pC02IJ05?if_exists}</td>
                        </tr>
                    </table>
                </#if>
                <#if (mbtPc02k??)>
                    <h4>相关还款责任汇总信息段</h4>
                    <table>
                        <tr style="background:gray;">
                            <th>相关还款责任个数</th>
                            <th>借款人身份类别</th>
                            <th>相关还款责任类 型</th>
                            <th>账户数</th>
                            <th>还款责任金额</th>
                            <th>余额</th>
                        </tr>
                        <tr>
                            <td>${mbtPc02k.pC02KS01?if_exists}</td>
                            <td>${mbtPc02k.pC02KD01?if_exists}</td>
                            <td>${mbtPc02k.pC02KD02?if_exists}</td>
                            <td>${mbtPc02k.pC02KS02?if_exists}</td>
                            <td>${mbtPc02k.pC02KJ01?if_exists}</td>
                            <td>${mbtPc02k.pC02KJ02?if_exists}</td>
                        </tr>
                    </table>
                </#if>
            </div>
        </#if>
        <#if (mbtPc02??)>
            <div>
                <p>后付费业务欠费信息汇总信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>后付费业务类型数量</th>
                        <th>后付费业务类型</th>
                        <th>欠费账户数</th>
                        <th>欠费金额</th>
                    </tr>
                    <tr>
                        <td>${mbtPc02.pC030S01?if_exists}</td>
                        <td>${mbtPc02.pC030D01?if_exists}</td>
                        <td>${mbtPc02.pC030S02?if_exists}</td>
                        <td>${mbtPc02.pC030J01?if_exists}</td>
                    </tr>
                </table>
            </div>
        </#if>
        <#if (mbtPc040??)>
            <div>
                <p>公共信息概要信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>公共信息类型数量</th>
                        <th>公共信息类型</th>
                        <th>记录数</th>
                        <th>涉及金额</th>
                    </tr>
                    <tr>
                        <td>${mbtPc040.pC040S01?if_exists}</td>
                        <td>${mbtPc040.pC040D01?if_exists}</td>
                        <td>${mbtPc040.pC040S02?if_exists}</td>
                        <td>${mbtPc040.pC040J01?if_exists}</td>
                    </tr>
                </table>
            </div>
        </#if>
        <#if (mbtPc02??)>
            <div>
                <p>查询记录概要信息</p>
                <table>
                    <tr style="background:gray;">
                        <th>上一次查询日期</th>
                        <th>上一次查询机构机构类型</th>
                        <th>上一次查询机构代码</th>
                        <th>上一次查询原因</th>
                        <th>最近1个月内的查询机构数(贷款审批)</th>
                        <th>最近1个月内的查询机构数(信用卡审批)</th>
                    </tr>
                    <tr>
                        <td>${mbtPc02.pC05AR01?if_exists}</td>
                        <td>${mbtPc02.pC05AD01?if_exists}</td>
                        <td>${mbtPc02.pC05AI01?if_exists}</td>
                        <td>${mbtPc02.pC05AQ01?if_exists}</td>
                        <td>${mbtPc02.pC05BS01?if_exists}</td>
                        <td>${mbtPc02.pC05BS02?if_exists}</td>
                    </tr>
                </table>
                <table>
                    <tr style="background:gray;">
                        <th>最近1个月内的查询次数(贷款审批)</th>
                        <th>最近1个月内的查询次数(信用卡审批)</th>
                        <th>最近1个月内的查询次数(本人审批)</th>
                        <th>最近2年内的查询次数(贷后管理)</th>
                        <th>最近2年内的查询次数(担保资格审查)</th>
                        <th>最近2年内的查询次数(特约商户实名审查)</th>
                    </tr>
                    <tr>
                        <td>${mbtPc02.pC05BS03?if_exists}</td>
                        <td>${mbtPc02.pC05BS04?if_exists}</td>
                        <td>${mbtPc02.pC05BS05?if_exists}</td>
                        <td>${mbtPc02.pC05BS06?if_exists}</td>
                        <td>${mbtPc02.pC05BS07?if_exists}</td>
                        <td>${mbtPc02.pC05BS08?if_exists}</td>
                    </tr>
                </table>
            </div>
        </#if>
    </div>
</#if>
</body>
</html>