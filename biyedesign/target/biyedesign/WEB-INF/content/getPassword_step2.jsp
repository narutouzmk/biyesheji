<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/24
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>找回密码</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="static/css/getPassword.css" rel="stylesheet"/>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h3>请输入新的密码</h3>
    <div class="container-fluid">
        ${requestScope.mess_not_get}
        <form class="form-horizontal" action="/getPassword_step_f" id="my-form">
            <div class="form-group">
                <label for="my-password">密码</label>
                <input type="text" class="form-control" id="my-password" name="password" placeholder="请输入密码"/>
                <span id="my-password-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-password-tip"></span>
                <p class="form-control-static my-p-laber-1">请务必牢记登录密码</p>
            </div>
            <div class="form-group">
                <button id="my-sub-button" type="button" class="col-md-3 btn btn-lg btn-success"/>点击提交</button>
            </div>
        </form>
    </div>
</div>
</body>
<script src="static/js/get_password_validator2.js"></script>
</html>
