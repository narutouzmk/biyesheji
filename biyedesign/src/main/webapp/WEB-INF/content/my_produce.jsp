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
    <title>我们的产品</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="static/css/register.css" rel="stylesheet"/>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="head">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header my_brand">
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/login_out">Home</a></li>
                    <li><a href="#">Produce</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container my-container-2">
    <table class="table table-hover table-responsive" style="font-family: 微软雅黑">
        <thead>
            <th>产品名</th>
            <th>所属公司</th>
            <th>上线日期</th>
            <th>状态</th>
            </thead>
        <tbody>
            <c:forEach items="${requestScope.produces_all}" var="all_produce">
                <tr>
                    <td>${all_produce.produce_item}</td>
                    <td>${all_produce.produce_company}</td>
                    <td>${all_produce.online_date}</td>
                    <td><a href="${all_produce.produce_state}">查看产品</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/produce_commend">点我回到刚才页面</a>
</div>
</body>
<script src="static/js/validator.js"></script>
</html>
