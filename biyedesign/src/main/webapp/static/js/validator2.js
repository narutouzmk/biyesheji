/**
 * Created by BIN on 2018/5/16.
 */
var occupation = document.getElementById("occupation");
var age = document.getElementById("age");
var sex = document.getElementsByName("sex");
var my_wage = document.getElementById("my_wage");
var allCapital = document.getElementById("allCapital");
var month_consume = document.getElementById("month_consume");

var btn_step2 = document.getElementById("btn_step2");

var tag = false;

var occupation_tip1 = document.getElementById("my-occupation-tip1");
var occupation_tip2 = document.getElementById("my-occupation-tip2");
var age_tip1 = document.getElementById("my-age-tip1");
var age_tip2 = document.getElementById("my-age-tip2");
var sex_tip1 = document.getElementById("my-sex-tip1");
var sex_tip2 = document.getElementById("my-sex-tip2");
var wage_tip1 = document.getElementById("my-wage-tip1");
var wage_tip2 = document.getElementById("my-wage-tip2");
var capital_tip1 = document.getElementById("my-capital-tip1");
var capital_tip2 = document.getElementById("my-capital-tip2");
var monthConsume_tip1 = document.getElementById("my-monthConsume-tip1");
var monthConsume_tip2 = document.getElementById("my-monthConsume-tip2");

occupation.onblur = function(){
    if(occupation.value == ""){
        occupation_tip2.style.display = "inline-block";
        occupation_tip2.innerHTML = "至少填写一个职业";
        occupation_tip2.classList.add("my-tip");
        occupation_tip1.style.display = "inline-block";
    }
}
occupation.onfocus = function(){
    occupation_tip1.style.display = "none";
    occupation_tip2.style.display = "none";
}

age.onblur = function(){
    if(age.value == ""){
        age_tip2.style.display = "inline-block";
        age_tip2.innerHTML = "年龄必须填写";
        age_tip2.classList.add("my-tip");
        age_tip1.style.display = "inline-block";
    }
}
age.onfocus = function(){
    age_tip1.style.display = "none";
    age_tip2.style.display = "none";
}

my_wage.onblur = function(){
    if(my_wage.value == ""){
        wage_tip2.style.display = "inline-block";
        wage_tip2.innerHTML = "至少填写一个职业";
        wage_tip2.classList.add("my-tip");
        wage_tip1.style.display = "inline-block";
    }
}
my_wage.onfocus = function(){
    wage_tip1.style.display = "none";
    wage_tip2.style.display = "none";
}

allCapital.onblur = function(){
    if(allCapital.value == ""){
        capital_tip2.style.display = "inline-block";
        capital_tip2.innerHTML = "至少填写一个职业";
        capital_tip2.classList.add("my-tip");
        capital_tip1.style.display = "inline-block";
    }
}
allCapital.onfocus = function(){
    capital_tip1.style.display = "none";
    capital_tip2.style.display = "none";
}

month_consume.onblur = function(){
    if(month_consume.value == ""){
        monthConsume_tip2.style.display = "inline-block";
        monthConsume_tip2.innerHTML = "至少填写一个职业";
        monthConsume_tip2.classList.add("my-tip");
        monthConsume_tip1.style.display = "inline-block";
    }
}
month_consume.onfocus = function(){
    monthConsume_tip1.style.display = "none";
    monthConsume_tip2.style.display = "none";
}

//判断是否选择了性别
function isSelectSex(){
    for(rad in sex){
        if(sex[rad].checked){
            tag = true;
            break;
        }
    }
}

//提交验证
btn_step2.onclick = function(){
    isSelectSex();
    var m_occupation = occupation.value;
    var m_age = age.value;
    var m_wage = my_wage.value;
    var m_allCapital = allCapital.value;
    var m_monthConsume = month_consume.value;

    var flag = 0;

    if(m_occupation == ""){
        occupation_tip2.style.display = "inline-block";
        occupation_tip2.innerHTML = "至少填写一个职业";
        occupation_tip2.classList.add("my-tip");
        occupation_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(m_age == ""){
        age_tip2.style.display = "inline-block";
        age_tip2.innerHTML = "填写年龄(1-120)之间";
        age_tip2.classList.add("my-tip");
        age_tip1.style.display = "inline-block";
        flag = 1;
    }else if(m_age > 120){
        age_tip2.style.display = "inline-block";
        age_tip2.innerHTML = "请填写现实年龄";
        age_tip2.classList.add("my-tip");
        age_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(m_wage == ""){
        wage_tip2.style.display = "inline-block";
        wage_tip2.innerHTML = "请填写您真实的月薪";
        wage_tip2.classList.add("my-tip");
        wage_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(m_allCapital == ""){
        capital_tip2.style.display = "inline-block";
        capital_tip2.innerHTML = "请填写您真实的资产";
        capital_tip2.classList.add("my-tip");
        capital_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(m_monthConsume == ""){
        monthConsume_tip2.style.display = "inline-block";
        monthConsume_tip2.innerHTML = "请填写您的平均月消费";
        monthConsume_tip2.classList.add("my-tip");
        monthConsume_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(!tag){
        sex_tip2.style.display = "inline-block";
        sex_tip2.innerHTML = "必须选择性别";
        sex_tip2.classList.add("my-tip");
        sex_tip1.style.display = "inline-block";
        flag = 1;
    }

    if(flag == 0){
        var my_form = document.getElementById("my-form");
        my_form.submit();
    }
}
