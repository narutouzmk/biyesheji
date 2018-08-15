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
                    <input type="text" class="form-control" id="today">
                			<span class="input-group-addon">
                    			<i class="glyphicon glyphicon-calendar"></i>
                			</span>
                </div>
            </div>
        </div>

    </div>

    <div class="col-md-7 my-col-md-7-right my-generalize-table">
        ${requestScope.user_Generalizemess}
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
            <c:forEach items="${requestScope.dayGeneralizeConsumeList}" var="daydayGeneralizeConsume">
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
        <form class="form-inline" action="/user_1Delete">
            <div class="form-group">
                <label>请输入您所需要删除的消费记录编号</label>
                <input type="number" class="form-control" id="delete_data" name="bigItem_id"/>
                <button type="submit" class="btn btn-default">删除</button>
            </div>
        </form>
    </div>

    <div class="col-md-7 my-col-md-7-right my-generalize-table2">
        <form class="form-horizontal" action="/user_1Update">
            <label>请输入您所需要修改的消费记录</label>
            <div class="form-group update_generalize">
                <input type="number" class="form-control " id="update_id" name="bigItem_id" placeholder="请输入编号"/>
            </div>
            <div class="form-group update_generalize">
                <input type="number" class="form-control" id="update_life" name="life_consume" placeholder="请输入生活消费修改值"/>
            </div>
            <div class="form-group update_generalize">
                <input type="number" class="form-control" id="update_learn" name="learn_consume" placeholder="请输入学习消费修改值"/>
            </div>
            <div class="form-group update_generalize">
                <input type="number" class="form-control" id="update_entertainment" name="entertainment_consume" placeholder="请输入娱乐消费修改值"/>
            </div>
            <div class="form-group update_generalize">
                <input type="number" class="form-control" id="update_invest" name="invest_consume" placeholder="请输入投资消费修改值"/>
            </div>
            <div class="form-group update_generalize">
                <input type="number" class="form-control" id="update_other" name="other_consume" placeholder="请输入其他消费修改值"/>
            </div>
            <div class="form-group update_generalize">
                <input type="date" class="form-control" id="update_day_date" name="day_date" placeholder="请输入消费日期修改值"/>
            </div>
            <button type="submit" class="btn btn-default">修改</button>
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
</script>
</body>
</html>