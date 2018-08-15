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
    <title>个人中心</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <script src="static/calander/moment-with-locales.min.js"></script>
    <link href="static/calander/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script src="static/calander/bootstrap-datetimepicker.min.js"></script>

    <link href="static/css/personCenter.css" rel="stylesheet"/>
    <!--<script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>-->
</head>
<body>
<div class="container">
    <!--<div class="col-md-6">-->
    <div class="container-fluid my-container-1">
        <ul class="nav nav-pills">
            <li class="active" role="presentation">
                <a href="#">个人中心</a>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    个人帐单
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/user_1">个人花销分布图</a></li>
                    <li class="divider"></li>
                    <li><a href="#">记事本</a></li>
                    <li class="divider"></li>
                    <li><a href="/user_6">个人支出详细显示</a></li>
                    <li class="divider"></li>
                    <li><a href="/user_7">个人收入详细显示</a></li>
                </ul>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    今日收支
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/user_2">今日支出梗概</a></li>
                    <li class="divider"></li>
                    <li><a href="/user_4">今日支出细则</a></li>
                    <li class="divider"></li>
                    <li><a href="/user_5">今日收入细则</a></li>
                </ul>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    个人资产状态
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/capital_generalize">个人资产总概括</a></li>
                    <li class="divider"></li>
                    <li><a href="/capital_sellOut">资产买出情况</a></li>
                    <li class="divider"></li>
                    <li><a href="/capital_buyIn">资产买入情况</a></li>
                </ul>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    个人资产管理
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/capital_sellOutInsert">资产卖出</a></li>
                    <li class="divider"></li>
                    <li><a href="/capital_buyInsert">资产买入</a></li>
                </ul>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    理财管理
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/worldBankInfo_show">中央银行</a></li>
                    <li class="divider"></li>
                    <li><a href="/produce_commend">理财产品智能推荐</a></li>
                </ul>
            </li>

            <li class="navbar-right">
                <a class="btn-default login_out" href="/login_out">退出登录</a>
            </li>
        </ul>
    </div>
    <!--</div>-->
</div>

<div class="container-fluid my-container-2">
    <div class="col-md-3 my-col-md-3-left">
        <div class="container-fluid site-user">
            <img class="site-user-image" src="static/img/${sessionScope.user.getHead_img()}" alt="user"/>
            <p class="site-user-name">${sessionScope.get("user").login_name}</p>
            <p class="site-user-description">${sessionScope.description}</p>
        </div>

        <div class="container-fluid site-calander">
            <div class="form-group">
                <div class="input-group date" id='date1'>
                    <input type="text" class="form-control" id="today">
                			<span class="input-group-addon">
                    			<i class="glyphicon glyphicon-calendar"></i>
                			</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-7 my-col-md-7-right">
        <div class="col-md-7 my-col-md-7-right">
            <div class="container-fluid">
                ${requestScope.mess_already_exit}
                <table class="table table-condensed">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>邮箱</th>
                        <th>电话号码</th>
                        <th>头像</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${sessionScope.user.login_name}</td>
                        <td>${sessionScope.user.password}</td>
                        <td>${sessionScope.user.e_mail}</td>
                        <td>${sessionScope.user.phone_number}</td>
                        <td>${sessionScope.user.head_img}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="container-fluid modify-info">
                <h3>修改基础信息后需要重新登录</h3>
                <form class="form-horizontal" action="/modify_finfo" method="post">
                    <%--<div class="form-group">--%>
                        <%--<label for="loginName" class="col-sm-2 control-label">登录名</label>--%>
                        <%--<div class="col-sm-10">--%>
                            <%--<input type="text" class="form-control" id="loginName" placeholder="请输入新的用户名" name="login_name"/>--%>
                        <%--</div>--%>
                    <%--</div>--%>
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
                        <label for="headImage" class="col-sm-2 control-label">新头像</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="headImage" name="head_img">
                                <%--<option value="hashiqi1.jpg">hashiqi1.jpg</option>--%>
                                <%--<option value="hashiqi2.jpg">hashiqi2.jpg</option>--%>
                                <c:forEach items="${requestScope.head_imageList}" var="head_image">
                                    <option value="${head_image.img_name}">${head_image.img_name}</option>
                                </c:forEach>
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

            <div class="container-fluid">
                <table class="table table-condensed">
                    <thead>
                    <tr>
                        <th>职业</th>
                        <th>年龄</th>
                        <th>性别</th>
                        <th>月薪</th>
                        <th>总资产</th>
                        <th>月收入</th>
                        <th>个人描述</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${requestScope.check_userInfo.occupation}</td>
                        <td>${requestScope.check_userInfo.age}</td>
                        <td>${requestScope.check_userInfo.sex}</td>
                        <td>${requestScope.check_userInfo.wage}</td>
                        <td>${requestScope.check_userInfo.allCapital}</td>
                        <td>${requestScope.check_userInfo.month_consume}</td>
                        <td>${requestScope.check_userInfo.description}</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="container-fluid modify-info">

                <form class="form-horizontal" id="form_info" action="/modify_pinfo" method="post">

                    <div class="form-group">
                        <label for="occupations" class="col-sm-2 control-label">职业</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="occupations" name="occupation" placeholder="请输入新的职业" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Age" class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Age" name="age" placeholder="请输入新的年龄" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex_man" value="男"/>男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex_woman" value="女"/>女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="wages" class="col-sm-2 control-label">月薪</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="wages" name="wage" placeholder="请输入新的月收入"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="capital" class="col-sm-2 control-label">总资产</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="capital" name="allCapital" placeholder="请输入新的总资产"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="monthConsume" class="col-sm-2 control-label">月消费</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="monthConsume" name="month_consume" placeholder="请输入新的月消费"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="descriptions" class="col-sm-2 control-label">个人描述</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="descriptions" name="description" placeholder="请输入新的月收入"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" id="sub_person_info" class="btn btn-default">修改</button>
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>

<script>
    $(function () {
        $('#date1').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn')
        });
    });
</script>

<script type="text/javascript">
    function today(){
        var today=new Date();
        var h=today.getFullYear();
        var m=today.getMonth()+1;
        var d=today.getDate();
        return h+"-"+m+"-"+d;
    }

    document.getElementById("today").value = today();
</script>
</body>
<script src="static/js/personInfoValidate.js"></script>
</html>

