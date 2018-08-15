<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:41
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
    <link href="static/css/register-step-3.css" rel="stylesheet"/>
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
            <li><a href="#">第一步<br>创建您的账户</a></li>
            <li><a href="#">第二步<br>选择您的计划</a></li>
            <li class="active"><a href="#">第三步<br>我们为您智能推荐</a></li>
        </ul>
    </div>
</div>

<div class="container">
    <table class="table">
        <caption>我们根据你的信息为您推荐</caption>
        <thead>
            <tr>
                <th>产品</th>
                <th>所属公司</th>
                <th>状态</th>
                <th>日期</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.produces}" var="produce">
                <tr>
                    <td>${produce.produce_item}</td>
                    <td>${produce.produce_company}</td>
                    <td><a href="${produce.produce_state}">查看产品</a></td>
                    <td>${produce.online_date}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<a class="col-md-2 col-md-offset-6 btn btn-success" href="/login">去登录，了解更多</a>
</body>
</html>

