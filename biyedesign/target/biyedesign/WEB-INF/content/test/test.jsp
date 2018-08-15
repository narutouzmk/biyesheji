<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/5
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <title></title>
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">
                <img src="/images/w3r.png" width="111" height="30" alt="w3cschool logo" /></a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active">
                        <a href="#">Home</a></li>
                    <li>
                        <a href="#about">About</a></li>
                    <li>
                        <a href="#contact">Contact</a></li>
                </ul>
                <p class="navbar-text pull-right">Logged in as
                    <a href="#">username</a></p>
            </div>
            <!--/.nav-collapse --></div>
    </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header">Frontend</li>
                    <li class="active">
                        <a href="#">HTML 4.01</a></li>
                    <li>
                        <a href="#">HTML5</a></li>
                    <li>
                        <a href="#">CSS</a></li>
                    <li>
                        <a href="#">JavaScript</a></li>
                    <li>
                        <a href="#">Twitter Bootstrap</a></li>
                    <li>
                        <a href="#">Firebug</a></li>
                    <li class="nav-header">Backend</li>
                    <li>
                        <a href="#">PHP</a></li>
                    <li>
                        <a href="#">SQL</a></li>
                    <li>
                        <a href="#">MySQL</a></li>
                    <li>
                        <a href="#">PostgreSQL</a></li>
                    <li>
                        <a href="#">MongoDB</a></li>
                </ul>
            </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            <div class="leaderboard">
                <h1>Learn. Practice. Develop.</h1>
                <p>w3cschool offers web development tutorials. We believe in Open Source. Love standards. And prioritize simplicity and readability while serving content.</p>
                <p>
                    <a class="btn btn-success btn-large">Join w3cschool now</a></p>
            </div>
            <div class="row-fluid">
                <div class="span4">
                    <h2>Learn</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                    <p>
                        <a class="btn btn-success btn-large" href="#">Start Learning now</a></p>
                </div><!--/span-->
                <div class="span4">
                    <h2>Practice</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                    <p>
                        <a class="btn btn-success btn-large" href="#">Start percticing now</a></p>
                </div>
                <!--/span-->
                <div class="span4">
                    <h2>Develop</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                    <p>
                        <a class="btn btn-success btn-large" href="#">Start developing now</a></p>
                </div><!--/span-->
            </div><!--/row-->
            <hr>
            <footer>
                <p>&copy; Company 2012</p>
            </footer>
        </div>
    </div>
</div><!--/.fluid-container-->
<script src="/static/js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
