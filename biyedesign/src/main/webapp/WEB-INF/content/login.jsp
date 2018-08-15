<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录界面</title>

    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/login.css" rel="stylesheet"/>
</head>
<body>
<div class="head">
    <nav class="navbar navbar-inverse" role="navigation" style="background-color: #24292E;">
        <div class="container">
            <div class="navbar-brand my_brand">
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="/look_upAllProduce">Produce</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container-fluid my-container-1">
    <!--<div class="row">-->
    <div class="col-md-7">
        <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="static/img/slider1.jpg" alt="first slide"/>
                </div>

                <div class="item">
                    <img src="static/img/slider2.jpeg" alt="second slide"/>
                </div>

                <div class="item">
                    <img src="static/img/slider3.jpeg" alt="third slide"/>
                </div>

                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prey">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>

                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>

    <div class="col-md-2 col-sm-offset-1 login-form">
        <div class="form-head">
            账号密码登录
        </div>
        <form role="form" action="/login" id="my-form" method="post">
            <div class="form-group">
                <input class="form-control input-lg" id="my-loginname" name="login_name" type="text" placeholder="账号"/>
                <span id="my-loginname-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-loginname-tip2"></span>
            </div>
            <div class="form-group">
                <input class="form-control input-lg" id="my-password" name="password" type="password" placeholder="密码"/>
                ${requestScope.mess_error}
                <span id="my-password-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-password-tip2"></span>
            </div>
            <div class="form-group">
                <button type="button" id="my-sub-button" class="btn-lg btn-primary btn-info my-full-btn" >点击登录</button>
            </div>
            <div class="login-links">
                <small><span class="glyphicon glyphicon-record"></span><a href="/forget_password" class="text-left text-primary my-rem-line">忘记密码</a></small>
                <small><span class="glyphicon glyphicon-hand-right"></span><a href="/register" class="text-right text-primary my-rem-line">点我注册</a></small>
            </div>
        </form>
    </div>
    <!--</div>-->
</div>
<div class="container">
    <h1 style="color: cornflowerblue">个人智能理财系统</h1>
</div>
</body>
<script src="static/js/loginValidator.js"></script>
</html>