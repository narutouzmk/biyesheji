<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:42
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
    <title>用户信息维护</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/user-info-mainten.css" rel="stylesheet"/>
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
                            <li><a href="#">添加管理员</a></li>
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
        ${requestScope.mess_addManager}
        <form role="form" action="/insertManager" id="my-form" method="post">
            <div class="form-group">
                <label for="my-loginname">姓名</label>
                <input type="text" class="form-control" id="my-loginname" name="login_name" placeholder="请输入姓名"/>
                <span id="my-loginname-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-loginname-tip"></span>
            </div>
            <div class="form-group">
                <label for="my-e_mail">Email</label>
                <input type="text" class="form-control" id="my-e_mail" name="e_mail" placeholder="email@example.com"/>
                <span id="my-e_mail-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-e_mail-tip"></span>
            </div>
            <div class="form-group">
                <label for="my-password">密码</label>
                <input type="password" class="form-control" id="my-password" name="password" placeholder="请输入密码"/>
                <span id="my-password-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-password-tip"></span>
            </div>
            <div class="form-group">
                <label for="my-phone_number">电话号码</label>
                <input type="text" class="form-control" id="my-phone_number" name="phone_number" placeholder="请输入电话号码"/>
                <span id="my-phone_number-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-phone_number-tip"></span>
            </div>
            <div class="form-group">
                <button id="my-sub-button" type="button" class="col-md-3 btn btn-lg btn-success"/>点击加入管理员</button>
            </div>
        </form>
    </div>
</div>
</body>
<script src="static/js/notNullValidate.js"></script>
</html>

