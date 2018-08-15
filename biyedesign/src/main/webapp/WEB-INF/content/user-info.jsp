<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息</title>

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
        <div class="container-fluid">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>id</th>
                    <th>登录名</th>
                    <th>密码</th>
                    <th>邮箱</th>
                    <th>联系方式</th>
                    <th>用户角色</th>
                    <th>头像</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>zhangsan</td>
                    <td>123456</td>
                    <td>123456@qq.com</td>
                    <td>1533333333</td>
                    <td>manage</td>
                    <td>img1.jpg</td>
                </tr>
                </tbody>
            </table>

            <div class="container-fluid">
                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="container-fluid">
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder="修改用户邮箱"/>
                            </div>
                            <div class="col-sm-2">
                                <input type="submit" class="btn btn-default" value="提交"/>
                            </div>
                        </div>
                    </div>
                </form>

                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="container-fluid">
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder="修改用户密码"/>
                            </div>
                            <div class="col-sm-2">
                                <input type="submit" class="btn btn-default" value="提交"/>
                            </div>
                        </div>
                    </div>
                </form>

                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="container-fluid">
                            <div class="col-sm-4">
                                <input type="text" class="form-control" placeholder="修改用户角色"/>
                            </div>
                            <div class="col-sm-2">
                                <input type="submit" class="btn btn-default" value="提交"/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

