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
    <title>企业信息查询</title>

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
                            <li><a href="#">企业产品信息</a></li>
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
                    <c:forEach items="${requestScope.produces}" var="produce">
                        <tr>
                            <td>${produce.produce_id}</td>
                            <td>${produce.produce_item}</td>
                            <td>${produce.produce_company}</td>
                            <td>${produce.online_date}</td>
                            <td>${produce.produce_state}</td>
                            <td>${produce.produce_suit}</td>
                         </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="container-fluid my_check_produce">
            <form class="form-inline" id="my_form" action="/check_produceByDate">
                <div class="form-group container-fluid">
                    <label>请输入日期查询产品信息</label>
                    <input type="date" class="form-control" id="my_date" name="online_date"/>
                    <button type="button" id="my_sub" class="btn btn-default">查询</button>
                </div>
            </form>
        </div>

        <div class="container-fluid my_check_produce">
            <form class="form-inline" action="/check_produceByCompany">
                <div class="form-group container-fluid">
                    <label>请输入公司名称查询产品信息</label>
                    <input type="text" class="form-control" id="check_byCompany" name="produce_company"/>
                    <button type="submit" class="btn btn-default">查询</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="static/js/dateValidate.js"></script>
</html>

