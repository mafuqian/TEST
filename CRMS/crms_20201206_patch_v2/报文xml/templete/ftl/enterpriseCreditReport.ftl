<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>企业信用报告</title>
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
            border: 1px solid #444444;
            font-size: 10px;
            margin-left: 5px;
        }

        .title_right p {
            text-align: left;
            margin: 0;
            margin-left: 50%;
            padding: 0;
        }
    </style>
</head>
<body>
<h1 align="center">企业信用报告</h1>
<div>
    <h2>企业信用报告</h2>
    <br/>
    <#if (mbtEb01)??>
        <div>
            <h3>信用提示信息单元</h3>
            <h4>信贷交易提示信息段</h4>
            <table>
                <tr style="background:gray;">
                    <th>首次有信贷交易的年份</th>
                    <th>首次有相关还款责任的年份</th>
                    <th>发生信贷交易的机构数</th>
                    <th>当前有未结清信贷交易的机构数</th>
                    <th>借贷交易余额</th>
                    <th>被追偿的借贷交易余额</th>
                    <th>关注类借贷交易余额</th>
                    <th>不良类借贷交易余额</th>
                    <th>担保交易余额</th>
                    <th>关注类担保交易余额</th>
                    <th>不良类担保交易余额</th>
                </tr>
                <tr>
                    <td>${mbtEb01.eb01ar01}</td>
                    <td>${mbtEb01.eb01ar02}</td>
                    <td>${mbtEb01.eb01as01}</td>
                    <td>${mbtEb01.eb01as02}</td>
                    <td>${mbtEb01.eb01aj01}</td>
                    <td>${mbtEb01.eb01aj02}</td>
                    <td>${mbtEb01.eb01aj03}</td>
                    <td>${mbtEb01.eb01aj04}</td>
                    <td>${mbtEb01.eb01aj05}</td>
                    <td>${mbtEb01.eb01aj06}</td>
                    <td>${mbtEb01.eb01aj07}</td>
                </tr>
            </table>

            <h4>非信贷交易及公共信息提示信息段</h4>
            <table>
                <tr style="background:gray;">
                    <th>非信贷交易账户数</th>
                    <th>欠税记录条数</th>
                    <th>民事判决记录条数</th>
                    <th>强制执行记录条数</th>
                    <th>行政处罚记录条数</th>

                </tr>
                <tr>
                    <td>${mbtEb01.eb01bs01}</td>
                    <td>${mbtEb01.eb01bs02}</td>
                    <td>${mbtEb01.eb01bs03}</td>
                    <td>${mbtEb01.eb01bs04}</td>
                    <td>${mbtEb01.eb01bs05}</td>
                </tr>
            </table>
        </div>
    </#if>
    <br/>
    <#if (mbtEc01)??>
        <div>
            <h3>基本概况信息单元</h3>
            <table>
                <tr style="background:gray;">
                    <th>经济类型</th>
                    <th>组织机构类型</th>
                    <th>企业规模</th>
                    <th>所属行业</th>
                    <th>登记地址</th>
                    <th>成立年份</th>
                    <th>登记证书有效截止日期</th>
                    <th>办公/经营地址</th>
                    <th>存续状态</th>
                </tr>
                <tr>
                    <td>${mbtEc01.ec010d01}</td>
                    <td>${mbtEc01.ec010d02}</td>
                    <td>${mbtEc01.ec010d03}</td>
                    <td>${mbtEc01.ec010d04}</td>
                    <td>${mbtEc01.ec010q01}</td>
                    <td>${mbtEc01.ec010r01}</td>
                    <td>${mbtEc01.ec010r02}</td>
                    <td>${mbtEc01.ec010q02}</td>
                    <td>${mbtEc01.ec010d05}</td>
                </tr>
            </table>
        </div>
    </#if>
</div>
</body>
</html>