<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>企业信息管理2</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/enterprise-manager.css" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid my-manager-container-head">
    <h3>智能理财系统后台管理员</h3>
</div>

<div class="container-fluid my-manager-container-0">
    <div class="col-md-2 my-side-left">
        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;后台管理员
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="/user-generalize">成员分布</a></li>
                            <li><a href="/login_out">注销</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            <span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;用户信息
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="/user_manager">用户管理</a></li>
                            <li><a href="/add_manager">添加管理员</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            <span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;企业信息管理
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="/enterprise_info">企业产品信息</a></li>
                            <li><a href="/bank_info_maintenance">银行信息维护</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a href="/login_out">
                            <span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;注销登录
                        </a>
                    </h4>
                </div>
            </div>

        </div>
    </div>

    <div class="col-md-8 my-side-right">

        <div class="container-fluid">
            <table class="table table-responsive table-bordered my-world-bank">
                <thead>
                <tr>
                    <th rowspan="2">编号</th>
                    <th rowspan="2">日期</th>
                    <th colspan="2">政府债券</th>
                    <th colspan="2">中央银行票据</th>
                    <th colspan="2">金融债券</th>
                    <th colspan="2">公司信用类债券</th>
                    <th colspan="2">国际机构债券</th>
                    <th colspan="2">各类债券合计</th>
                </tr>
                <tr>
                    <td>发行</td>
                    <td>余额</td>

                    <td>发行</td>
                    <td>余额</td>

                    <td>发行</td>
                    <td>余额</td>

                    <td>发行</td>
                    <td>余额</td>

                    <td>发行</td>
                    <td>余额</td>

                    <td>发行</td>
                    <td>余额</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.m_worldBanks}" var="worldBank">
                    <tr>
                        <td>${worldBank.bank_id}</td>
                        <td>${worldBank.cur_date}</td>
                        <td>${worldBank.gov_cur}</td>
                        <td>${worldBank.gov_bal}</td>

                        <td>${worldBank.cbank_cur}</td>
                        <td>${worldBank.cbank_bal}</td>

                        <td>${worldBank.fbond_cur}</td>
                        <td>${worldBank.fbond_bal}</td>

                        <td>${worldBank.ccre_cur}</td>
                        <td>${worldBank.ccre_bal}</td>

                        <td>${worldBank.ino_cur}</td>
                        <td>${worldBank.ino_bal}</td>

                        <td>${worldBank.oth_cur}</td>
                        <td>${worldBank.oth_bal}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="container-fluid">
            <h3>请在和上表对应的位置输入对应的数值</h3>
            <form class="form form-horizontal" action="/insertBankInfo">
                <table class="table table-condensed">
                    <tbody>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="govCur">curent</label>
                                <input type="text" class="form-control" id="govCur" name="gov_cur" placeholder="政府债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="govBal">remainder</label>
                                <input type="text" class="form-control" id="govBal" name="gov_bal" placeholder="政府债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="cbankCur">curent</label>
                                <input type="text" class="form-control" id="cbankCur" name="cbank_cur" placeholder="中央银行票据(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="cbankBal">remainder</label>
                                <input type="text" class="form-control" id="cbankBal" name="cbank_bal" placeholder="中央银行票据(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="fbondCur">curent</label>
                                <input type="text" class="form-control" id="fbondCur" name="fbond_cur" placeholder="金融债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="fbondBal">remainder</label>
                                <input type="text" class="form-control" id="fbondBal" name="fbond_bal" placeholder="金融债券(余额)" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="ccreCur">curent</label>
                                <input type="text" class="form-control" id="ccreCur" name="ccre_cur" placeholder="公司信用类债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="ccreBal">remainder</label>
                                <input type="text" class="form-control" id="ccreBal" name="ccre_bal" placeholder="公司信用类债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="inoCur">curent</label>
                                <input type="text" class="form-control" id="inoCur" name="ino_cur" placeholder="国际机构债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="inoBal">remainder</label>
                                <input type="text" class="form-control" id="inoBal" name="ino_bal" placeholder="国际机构债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="othCur">curent</label>
                                <input type="text" class="form-control" id="othCur" name="oth_cur" placeholder="各类债券合计(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="othBal">remainder</label>
                                <input type="text" class="form-control" id="othBal" name="oth_bal" placeholder="各类债券合计债券(余额)" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="curDate">日期</label>
                                <input type="date" class="form-control" id="curDate" name="cur_date"/>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="col-md-3 col-md-offset-4 my-form-inline">
                    <button type="submit" class="btn my-full-btn btn-success">提交</button>
                </div>
            </form>
        </div>

        <div class="container-fluid">
            <h3>请在和上表对应的位置输入对应的更新数值</h3>
            <form class="form form-horizontal" action="/updateBankInfo">
                <table class="table table-condensed">
                    <tbody>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_bankId">curent</label>
                                <input type="number" class="form-control" id="u_bankId" name="bank_id" placeholder="信息编号" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_curDate">日期</label>
                                <input type="date" class="form-control" id="u_curDate" name="cur_date"/>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_govCur">curent</label>
                                <input type="text" class="form-control" id="u_govCur" name="gov_cur" placeholder="政府债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_govBal">remainder</label>
                                <input type="text" class="form-control" id="u_govBal" name="gov_bal" placeholder="政府债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_cbankCur">curent</label>
                                <input type="text" class="form-control" id="u_cbankCur" name="cbank_cur" placeholder="中央银行票据(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_cbankBal">remainder</label>
                                <input type="text" class="form-control" id="u_cbankBal" name="cbank_bal" placeholder="中央银行票据(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_fbondCur">curent</label>
                                <input type="text" class="form-control" id="u_fbondCur" name="fbond_cur" placeholder="金融债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_fbondBal">remainder</label>
                                <input type="text" class="form-control" id="u_fbondBal" name="fbond_bal" placeholder="金融债券(余额)" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_ccreCur">curent</label>
                                <input type="text" class="form-control" id="u_ccreCur" name="ccre_cur" placeholder="公司信用类债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_ccreBal">remainder</label>
                                <input type="text" class="form-control" id="u_ccreBal" name="ccre_bal" placeholder="公司信用类债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_inoCur">curent</label>
                                <input type="text" class="form-control" id="u_inoCur" name="ino_cur" placeholder="国际机构债券(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_inoBal">remainder</label>
                                <input type="text" class="form-control" id="u_inoBal" name="ino_bal" placeholder="国际机构债券(余额)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_othCur">curent</label>
                                <input type="text" class="form-control" id="u_othCur" name="oth_cur" placeholder="各类债券合计(发行)" />
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="sr-only" for="u_othBal">remainder</label>
                                <input type="text" class="form-control" id="u_othBal" name="oth_bal" placeholder="各类债券合计债券(余额)" />
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="col-md-3 col-md-offset-4 my-form-inline">
                    <button type="submit" class="btn my-full-btn btn-success">提交</button>
                </div>
            </form>
        </div>

        <div class="container-fluid">
            <form class="form-horizontal" action="/deleteBankInfo">
                <div class="form-group">
                    <div class="container-fluid">
                        <div class="col-sm-6">
                            <input type="number" class="form-control" name="bank_id" placeholder="请输入产品编号进行删除"/>
                        </div>
                        <div class="col-sm-2">
                            <input type="submit" class="btn btn-default" value="提交"/>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

