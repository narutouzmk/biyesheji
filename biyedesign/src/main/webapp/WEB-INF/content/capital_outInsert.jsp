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
    <title>今日支出细则</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <script src="static/calander/moment-with-locales.min.js"></script>
    <link href="static/calander/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script src="static/calander/bootstrap-datetimepicker.min.js"></script>

    <link href="static/css/user_4.css" rel="stylesheet"/>
    <!--<script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>-->
</head>
<body>
<div class="container">
    <!--<div class="col-md-6">-->
    <div class="container-fluid my-container-1">
        <ul class="nav nav-pills">
            <li class="active" role="presentation">
                <a href="/person_info">个人中心</a>
            </li>

            <li class="dropdown" role="presentation">
                <a class="dropdown-toggle" role="button" aria-expanded="false" aria-haspopup="true" href="#" data-toggle="dropdown">
                    个人帐单
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/user_1">个人花销分布图</a></li>
                    <li class="divider"></li>
                    <li><a href="/user_3">记事本</a></li>
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
                    <li><a href="#">今日支出细则</a></li>
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
                    <li><a href="#">资产卖出</a></li>
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
        <h3>今日小账本</h3><p class="small_title">请在对应分类区输入您今天的资产卖出情况</p>

        <div class="container-fluid my-container-3">
            <form class="form-horizontal" id="form_note" action="/insert_capitalOut">
                <table class="table table-bordered">
                    <caption>资产卖出细则</caption>
                    <thead>
                    <th>资产卖出项目</th>
                    <th>收入金额</th>
                    </thead>
                    <tbody class="form-group">
                    <tr>
                        <td>
                            <input id="input_item" class="form-control" name="capitalo_item"/>
                        </td>
                        <td>
                            <input id="input_count" class="form-control" name="capitalo_count"/>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="form-group">
                    <button type="button" id="my_submit" class="col-md-2 col-sm-offset-5 btn btn-success" >提交</button>
                </div>
            </form>
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
<script src="static/js/input_Capital_Validate.js"></script>
</html>

