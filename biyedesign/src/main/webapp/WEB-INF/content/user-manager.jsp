<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:43
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
    <title>用户管理</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <link href="static/css/user-manager.css" rel="stylesheet"/>
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
                            <li><a href="#">用户管理</a></li>
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
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>id</th>
                <th>登录名</th>
                <th>密码</th>
                <th>邮箱</th>
                <th>联系方式</th>
                <th>角色</th>
                <th>头像</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.userList}" var="user_ist">
                <tr>
                    <td>${user_ist.user_id}</td>
                    <td>${user_ist.login_name}</td>
                    <td>${user_ist.password}</td>
                    <td>${user_ist.e_mail}</td>
                    <td>${user_ist.phone_number}</td>
                    <td>${user_ist.role}</td>
                    <td>${user_ist.head_img}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="container-fluid">
            <form class="form-horizontal" action="/manager_delete">
                ${requestScope.mess_m_delete_null}
                <div class="form-group">
                    <div class="container-fluid">
                        <div class="col-sm-6">
                            <input type="number" class="form-control" name="user_id" placeholder="请输入用户id进行删除用户"/>
                        </div>
                        <div class="col-sm-2">
                            <input type="submit" class="btn btn-default" value="提交"/>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div class="container-fluid modify-info">
            <h3>修改<b>当前管理员</b>基础信息后需要重新登录</h3>
            <form class="form-horizontal" action="/manager_update" method="post">
                <div class="form-group">
                    <label for="userId" class="col-sm-2 control-label">编号</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="userId" placeholder="请输入需要修改的用户编号" name="user_id"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="loginName" class="col-sm-2 control-label">登录名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="loginName" placeholder="请输入新的用户名" name="login_name"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="password" placeholder="请输入新的密码" name="password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="e_mail" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="e_mail" placeholder="请输入新的邮箱" name="e_mail"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-2 control-label">电话号码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phoneNumber" placeholder="请输入新的电话号码" name="phone_number"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="my_role" class="col-sm-2 control-label">权限</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="my_role" name="role">
                            <option value="manager">manager</option>
                            <option value="user">user</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="headImage" class="col-sm-2 control-label">新头像</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="headImage" name="head_img">
                            <option value="hashiqi1.jpg">hashiqi1.jpg</option>
                            <option value="hashiqi2.jpg">hashiqi2.jpg</option>
                            <option value="hashiqi3.jpg">hashiqi3.jpg</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">修改</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

