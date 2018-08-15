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
    <title>个人花销分布图</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <script src="static/calander/moment-with-locales.min.js"></script>
    <link href="static/calander/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <script src="static/calander/bootstrap-datetimepicker.min.js"></script>

    <link href="static/css/user_1.css" rel="stylesheet"/>
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
                    <li><a href="#">个人花销分布图</a></li>
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
            <p class="site-user-name">${sessionScope.user.getLogin_name()}</p>
            <p class="site-user-description">${sessionScope.description}</p>
        </div>

        <div class="container-fluid site-calander">
            <div class="form-group">
                <div class="input-group date" id='date1'>
                    <input type="text" class="form-control" id="today" />
                    <span class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </span>
                </div>
            </div>

            <h3 id="warning">${requestScope.warning}</h3>
        </div>

    </div>
    <div class="col-md-7 my-col-md-7-right">
        <h3>您的消费总览</h3>
        ${requestScope.user_1Mess}
        <div class="container-fluid my-container-3">
            <div class="col-md-3">基本支出(吃饭等生活必须)</div>
            <div class="col-md-9">
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="prgressbar" aria-valuenow="60" aria-valuemin="0" varia-valuemax="100" style="width: ${requestScope.p_life}%;">
                        <span class="sr-only">${requestScope.p_life}\%</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid my-container-3">
            <div class="col-md-3">学习支出(买书，教程等)</div>
            <div class="col-md-9">
                <div class="progress">
                    <div class="progress-bar progress-bar-info" role="prgressbar" aria-valuenow="60" aria-valuemin="0" varia-valuemax="100" style="width: ${requestScope.p_learn}%;">
                        <span class="sr-only">${requestScope.p_learn}\%</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid my-container-3">
            <div class="col-md-3">娱乐(旅游,聚会等)</div>
            <div class="col-md-9">
                <div class="progress">
                    <div class="progress-bar progress-bar-warning" role="prgressbar" aria-valuenow="60" aria-valuemin="0" varia-valuemax="100" style="width: ${requestScope.p_entertainment}%;">
                        <span class="sr-only">${requestScope.p_entertainment}\%</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid my-container-3">
            <div class="col-md-3">投资(购买保险，理财产品)</div>
            <div class="col-md-9">
                <div class="progress">
                    <div class="progress-bar progress-bar-danger" role="prgressbar" aria-valuenow="60" aria-valuemin="0" varia-valuemax="100" style="width: ${requestScope.p_invest}%;">
                        <span class="sr-only">${requestScope.p_invest}\%</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid my-container-3">
            <div class="col-md-3">其他(拜访家人亲戚等)</div>
            <div class="col-md-9">
                <div class="progress">
                    <div class="progress-bar" role="prgressbar" aria-valuenow="60" aria-valuemin="0" varia-valuemax="100" style="width: ${requestScope.p_other}%;">
                        <span class="sr-only">${requestScope.p_other}\%</span>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="col-md-7 my-col-md-7-right my-generalize-table">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>编号</th>
                <th>基本支出(吃饭等生活必须)</th>
                <th>学习支出(买书，教程等)</th>
                <th>娱乐(旅游,聚会等)</th>
                <th>投资(购买保险，理财产品)</th>
                <th>其他(拜访家人亲戚等)</th>
                <th>日期</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.dayGeneralizeConsumes}" var="daydayGeneralizeConsume">
                    <tr>
                        <td>${daydayGeneralizeConsume.bigItem_id}</td>
                        <td>${daydayGeneralizeConsume.life_consume}</td>
                        <td>${daydayGeneralizeConsume.learn_consume}</td>
                        <td>${daydayGeneralizeConsume.entertainment_consume}</td>
                        <td>${daydayGeneralizeConsume.invest_consume}</td>
                        <td>${daydayGeneralizeConsume.other_consume}</td>
                        <td>${daydayGeneralizeConsume.day_date}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="col-md-7 my-col-md-7-right my-generalize-table2">
        <form class="form-inline" id="my_form" action="/user_1DateCheck">
            <div class="form-group">
                <label>请输入日期查询消费概括</label>
                <input type="date" class="form-control" id="my_date" name="day_date"/>
                <button type="button" id="my_sub" class="btn btn-default">查询</button>
            </div>
        </form>
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

    document.getElementById("warning").onclick = function(){
        event.currentTarget.style.display = "none";
    };
</script>
</body>
<script src="static/js/dateValidate.js"></script>
</html>

