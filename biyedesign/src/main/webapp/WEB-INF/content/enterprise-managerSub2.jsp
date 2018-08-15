<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:39
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
    <title>按公司查询产品</title>

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
        ${requestScope.mess_company_produce}
        <div class="container-fluid my-produce">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>产品编号</th>
                    <th>产品名</th>
                    <th>产品所属公司</th>
                    <th>上线日期</th>
                    <th>产品状态</th>
                    <th>产品适宜人群</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.produceList_company}" var="company_produce">
                    <tr>
                        <td>${company_produce.produce_id}</td>
                        <td>${company_produce.produce_item}</td>
                        <td>${company_produce.produce_company}</td>
                        <td>${company_produce.online_date}</td>
                        <td>${company_produce.produce_state}</td>
                        <td>${company_produce.produce_suit}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

            <div class="container-fluid">
                <form class="form-horizontal" action="/produce_delete">
                    <div class="form-group">
                        <div class="container-fluid">
                            <div class="col-sm-6">
                                <input type="number" class="form-control" name="produce_id" placeholder="请输入产品编号进行删除"/>
                            </div>
                            <div class="col-sm-2">
                                <input type="submit" class="btn btn-default" value="提交"/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="container-fluid">
                <form class="form-horizontal" action="/produce_update" method="post">
                    <div class="form-group">
                        <label for="produceId" class="col-sm-2 control-label">编号</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="produceId" name="produce_id" placeholder="请输入需要修改的产品编号" "/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="produceItem" class="col-sm-2 control-label">产品名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="produceItem" name="produce_item" placeholder="请输入新的产品名"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="produceCompany" class="col-sm-2 control-label">产品所属公司</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="produceCompany" name="produce_company" placeholder="请输入产品所属公司" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="onlineDate" class="col-sm-2 control-label">产品上线日期</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="onlineDate" name="online_date"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="produceState" class="col-sm-2 control-label">产品状态</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="produceState" name="produce_state" placeholder="请输入新的产品状态" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="produceSuit" class="col-sm-2 control-label">产品适合人群</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="produceSuit" name="produce_suit" placeholder="请输入新的产品状态" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">修改</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="container-fluid">
                <form class="form-horizontal" action="/produce_insert" method="post">
                    <div class="form-group">
                        <label for="in_produceItem" class="col-sm-2 control-label">产品名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="in_produceItem" name="produce_item" placeholder="请输入新的产品名"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="in_produceCompany" class="col-sm-2 control-label">产品所属公司</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="in_produceCompany" name="produce_company" placeholder="请输入产品所属公司" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="in_onlineDate" class="col-sm-2 control-label">产品上线日期</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="in_onlineDate" name="online_date"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="in_produceState" class="col-sm-2 control-label">产品状态</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="in_produceState" name="produce_state" placeholder="请输入新的产品状态" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="in_produceSuit" class="col-sm-2 control-label">产品适合人群</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="in_produceSuit" name="produce_suit" placeholder="请输入新的产品状态" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">添加产品</button>
                        </div>
                    </div>
                </form>
            </div>
    </div>
</div>
</body>
</html>

