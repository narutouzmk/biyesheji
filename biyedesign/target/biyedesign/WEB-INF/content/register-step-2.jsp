<%--
  Created by IntelliJ IDEA.
  User: BIN
  Date: 2018/5/13
  Time: 19:40
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
    <title>注册</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="static/css/register-step-2.css" rel="stylesheet"/>
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
            <li class="active"><a href="#">第二步<br>选择您的计划</a></li>
            <li><a href="#">第三步<br>我们为您智能推荐</a></li>
        </ul>
    </div>
</div>

<div class="container my-container-3">
    <h3>我们将搜集一些您的个人信息，以便为您提供更可靠，全面的服务</h3>
    <div class="col-md-12 my-col-md-12-head">
        <h3>完善个人信息</h3>
        <p>您好，我们需要您提供一些您的详细信息，需要您用几分钟时间填写这份问卷。本问卷所有数据只用于统计分析， 请您放心填写，只用于您个人使用，我们承诺不会用于商用。题目选项无对错之分，请您按自己的实际情况填写。谢谢您的帮助。</p>
    </div>
    <div class="container my-container-4">
        <form role="form" action="/register_step2" id="my-form" method="post">
        <div class="form-group">
            <label for="occupation">您目前的主要职业</label>
            <input type="text" class="form-control" id="occupation" name="occupation" placeholder="职业(可多写至多三个)"/>
            <span id="my-occupation-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-occupation-tip2"></span>
        </div>

        <div class="form-group">
            <label for="age">您的年龄</label>
            <input type="number" class="form-control" id="age" name="age" placeholder="请输入您的真实年龄"/>
            <span id="my-age-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-age-tip2"></span>
        </div>

        <div class="form-group">
            <label >您的性别</label><br />
            <label class="radio-inline">
                <input type="radio" name="sex" id="sex_man" value="男"/>男
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="sex_woman" value="女"/>女
            </label><br />
            <span id="my-sex-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-sex-tip2"></span>
        </div>

        <div class="form-group">
            <label for="my_wage">您的月收入</label>
            <input type="text" class="form-control" id="my_wage" name="wage"/>
            <span id="my-wage-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-wage-tip2"></span>
        </div>

        <div class="form-group">
            <label for="allCapital">您的当前资产</label>
            <input type="text" class="form-control" id="allCapital" name="allCapital"/>
            <span id="my-capital-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-capital-tip2"></span>
        </div>

        <div class="form-group">
            <label for="month_consume">你平均一个月的花费大约是多少元？</label>
            <input type="text" class="form-control" id="month_consume" name="month_consume"/>
            <span id="my-monthConsume-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
            <span id="my-monthConsume-tip2"></span>
        </div>


            <div class="form-group">
                <label for="month_consume">可以简单介绍一下自己吗？</label>
                <input type="text" class="form-control" id="description" name="description"/>
                <span id="my-description-tip1" class="glyphicon glyphicon-info-sign my-tip2"></span>
                <span id="my-description-tip2"></span>
            </div>

            <div class="form-group">
                <label>你一般每个月花费主要在哪些方面？</label>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="伙食">伙食
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="日用品">日用品
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="学习">学习
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="娱乐">娱乐
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="通讯">通讯
                    </label>
                </div><div class="checkbox">
                <label>
                    <input type="checkbox" value="其他">其他
                </label>
            </div>
            </div>

            <div class="form-group">
                <label>以下哪项符合您的消费方式？</label>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="能省则省">能省则省
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="事先做好消费计划再计划花钱">事先做好消费计划再计划花钱
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="毫不犹豫，想花就花">毫不犹豫，想花就花
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="其他">其他
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label>你平时是否做消费记录？</label>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="有，全都做记录" checked>
                        有，全都做记录
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="有，主要部分做记录">
                        有，主要部分做记录
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios3" value="有，偶尔做记录">
                        有，偶尔做记录
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios4" value="几乎不做记录">
                        几乎不做记录
                    </label>
                </div>
            </div>

            <div class="form-group">
                <button type="button" class="col-md-3 col-md-offset-3 btn btn-success" id="btn_step2">点击完成注册</button>
            </div>
        </form>
    </div>
</div>
</body>
<script src="static/js/validator2.js"></script>
</html>