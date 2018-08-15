<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:33
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
    <title>注册</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="static/css/register.css" rel="stylesheet"/>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/brand.css" rel="stylesheet"/>
</head>
<body>
<div class="head">
    <nav class="navbar navbar-inverse" role="navigation" style="background-color: #24292E;">
        <div class="container">
            <div class="navbar-brand my_brand">
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/login_out">Home</a></li>
                    <li><a href="/look_upAllProduce">Produce</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container my-container-2">
    <div class="setup-header">
        <h1>加入我们</h1>
        <p class="lead">加入我们，您将得到更安全，可靠的理财解决方案</p>
    </div>
    <div class="col-md-9 step-guid">
        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#">第一步<br>创建您的账户</a></li>
            <li><a href="#">第二步<br>选择您的计划</a></li>
            <li><a href="#">第三步<br>我们为您智能理财</a></li>
        </ul>
    </div>
</div>

<div class="container my-container-3">
    <div class="col-md-8 my-form-fram">
        <form role="form" action="/register" id="my-form" method="post">
            <p class="form-control-static my-p-laber-0">创建你的账户</p>
            <div class="form-group">
                <label for="my-loginname">姓名</label>
                <input type="text" class="form-control" id="my-loginname" name="login_name" placeholder="请输入姓名"/>
                ${requestScope.mess_loginname}
                <span id="my-loginname-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-loginname-tip"></span>
                <p class="form-control-static my-p-laber-1">这将用作你的用户名，你可以在往后对其进行更改</p>
            </div>
            <div class="form-group">
                <label for="my-e_mail">Email</label>
                <input type="text" class="form-control" id="my-e_mail" name="e_mail" placeholder="email@example.com"/>
                <span id="my-e_mail-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-e_mail-tip"></span>
                <p class="form-control-static my-p-laber-1">您可以使用邮箱进行密码找回，我们也可以向你及时推送最新产品动态</p>
            </div>
            <div class="form-group">
                <label for="my-password">密码</label>
                <input type="password" class="form-control" id="my-password" name="password" placeholder="请输入密码"/>
                <span id="my-password-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-password-tip"></span>
                <p class="form-control-static my-p-laber-1">请务必牢记登录密码</p>
            </div>
            <div class="form-group">
                <label for="my-phone_number">电话号码</label>
                <input type="text" class="form-control" id="my-phone_number" name="phone_number" placeholder="请输入电话号码"/>
                <span id="my-phone_number-tip2" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-phone_number-tip"></span>
                <p class="form-control-static my-p-laber-1">我们可以通过此号码联系你</p>
            </div>
            <p class="form-control-static my-p-laber-2">通过点击提交按钮，您将拥有一个智能理财账户，快去开启全新新体验吧！！！</p>
            <div class="form-group">
                <button id="my-sub-button" type="button" class="col-md-3 btn btn-lg btn-success"/>点击注册</button>
            </div>
        </form>
    </div>
    <div class="col-md-3 my-col-md-3-right">
        <div class="my-col-xs-12-right-0"><h3>你将会喜欢上这款软件</h3></div>
        <div class="my-col-xs-12-right-1">
            <h4>更好的分析<small>根据个人情况给予建议</small></h4><br />
            <h4>更好的记录<small>完全实时记录你的财务</small></h4>
        </div>
        <div class="my-col-xs-12-right-2">
            <h5><span class="glyphicon glyphicon-ok"></span>智能交互</h5>
            <h5><span class="glyphicon glyphicon-ok"></span>个人账单</h5>
            <h5><span class="glyphicon glyphicon-ok"></span>个人理财</h5>
        </div>
    </div>
</div>
</body>
<script src="static/js/validator.js"></script>
</html>
