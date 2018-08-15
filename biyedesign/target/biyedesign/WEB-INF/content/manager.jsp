<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:40
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
    <title>后台管理</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/manager.css" rel="stylesheet"/>
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
        <div class="container-fluid my-progress-out">
            <h3>成员分布</h3>

            <div class="progress progress-striped active my-progress">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${requestScope.p_manager}%;">
                    管理员<span class="sr-only">${requestScope.p_manager}\%</span>
                </div>
            </div>

            <div class="progress progress-striped active my-progress">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${requestScope.p_user}%;">
                    普通用户<span class="sr-only">${requestScope.p_user}\% </span>
                </div>
            </div>

            <div class="people-contant">
                <table class="table table-bordered">
                    <thead>
                    <th>管理员人数</th>
                    <th>普通用户人数</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${requestScope.count_manager}</td>
                        <td>${requestScope.count_user}</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="manager-and-user-table">
                <div class="manager-table">
                    <label>管理员</label>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>登录名</th>
                            <th>密码</th>
                            <th>邮箱</th>
                            <th>联系方式</th>
                            <th>权限</th>
                            <th>头像</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.managers}" var="manager">
                                <tr>
                                    <td>${manager.user_id}</td>
                                    <td>${manager.login_name}</td>
                                    <td>${manager.password}</td>
                                    <td>${manager.e_mail}</td>
                                    <td>${manager.phone_number}</td>
                                    <td>${manager.role}</td>
                                    <td>${manager.head_img}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="manager-table">
                    <label>普通用户</label>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>登录名</th>
                            <th>密码</th>
                            <th>邮箱</th>
                            <th>联系方式</th>
                            <th>权限</th>
                            <th>头像</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${requestScope.users}" var="user">
                            <tr>
                                <td>${user.user_id}</td>
                                <td>${user.login_name}</td>
                                <td>${user.password}</td>
                                <td>${user.e_mail}</td>
                                <td>${user.phone_number}</td>
                                <td>${user.role}</td>
                                <td>${user.head_img}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>

