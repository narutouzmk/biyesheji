var myloginname = document.getElementById('my-loginname');
var mypassword = document.getElementById("my-password");
var mye_mail = document.getElementById("my-e_mail");
var myphone_number = document.getElementById("my-phone_number");
var mysubmit = document.getElementById("my-sub-button");

var tip_name = document.getElementById("my-loginname-tip");
var tip_password = document.getElementById("my-password-tip");
var tip_email = document.getElementById("my-e_mail-tip");
var tip_phone = document.getElementById("my-phone_number-tip");
var tip_name2 = document.getElementById("my-loginname-tip2");
var tip_password2 = document.getElementById("my-password-tip2");
var tip_email2 = document.getElementById("my-e_mail-tip2");
var tip_phone2 = document.getElementById("my-phone_number-tip2");

//匹配邮箱
var reg_email = new RegExp(/^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/);

//匹配密码
var reg_password = new RegExp(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,21}$/);

//匹配手机号
var reg_phone = new RegExp(/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/);

myloginname.onblur = function(){
    if(myloginname.value == ""){
        tip_name.style.display = "inline-block";
        tip_name.innerHTML = "用户名不能为空";
        tip_name.classList.add("my-tip");
        tip_name2.style.display = "inline-block";
    }
}

mypassword.onblur = function(){
    if(mypassword.value == ""){
        tip_password.style.display = "inline-block";
        tip_password.innerHTML = "密码不能为空";
        tip_password.classList.add("my-tip");
        tip_password2.style.display = "inline-block";
    }
}

myphone_number.onblur = function(){
    if(myphone_number.value == ""){
        tip_phone.style.display = "inline-block";
        tip_phone.innerHTML = "电话号码不能为空";
        tip_phone.classList.add("my-tip");
        tip_phone2.style.display="inline-block";
    }
}

mye_mail.onblur = function(){
    if(mye_mail.value == ""){
        tip_email.style.display = "inline-block";
        tip_email.innerHTML = "E_mail不能为空";
        tip_email.classList.add("my-tip");
        tip_email2.style.display = "inline-block";
    }
}

mypassword.onfocus = function(){
    tip_password.style.display = "none";
    tip_password2.style.display = "none";
}

mye_mail.onfocus = function(){
    tip_email.style.display = "none";
    tip_email2.style.display = "none";
}

myphone_number.onfocus = function(){
    tip_phone.style.display = "none";
    tip_phone2.style.display = "none";
}

myloginname.onfocus = function(){
    tip_name.style.display = "none";
    tip_name2.style.display = "none";
}

mysubmit.onclick = function(){
    var v_loginname = myloginname.value;
    var v_password = mypassword.value;
    var v_email = mye_mail.value;
    var v_phone_number = myphone_number.value;
    var flag = 0;

    if(v_loginname == ""){
        tip_name.style.display = "inline-block";
        tip_name.innerHTML = "用户名不能为空";
        tip_name.classList.add("my-tip");
        tip_name2.style.display = "inline-block";
        flag = 1;
    }else if(v_loginname.length < 2){
        tip_name.style.display = "inline-block";
        tip_name.innerHTML = "用户名不能小于2个字符";
        tip_name.classList.add("my-tip");
        tip_name2.style.display = "inline-block";
        flag = 1;
    }

    if(v_password == ""){
        tip_password.style.display = "inline-block";
        tip_password.innerHTML = "用户密码不能为空";
        tip_password.classList.add("my-tip");
        tip_password2.style.display = "inline-block";
        flag = 1;
    }else if(v_password.length < 8){
        tip_password.style.display = "inline-block";
        tip_password.innerHTML = "密码不能小于10个字符";
        tip_password.classList.add("my-tip");
        tip_password2.style.display = "inline-block";
        flag = 1;
    }else if(!reg_password.test(v_password)){
        tip_password.style.display = "inline-block";
        tip_password.innerHTML = "密码不能是纯字母或纯数字也不能是汉字";
        tip_password.classList.add("my-tip");
        tip_password2.style.display = "inline-block";
        flag = 1;
    }

    if(v_email == ""){
        tip_email.style.display = "inline-block";
        tip_email.innerHTML = "邮箱不能为空";
        tip_email.classList.add("my-tip");
        tip_email2.style.display = "inline-block";
        flag = 1;
    }else if(!reg_email.test(v_email)){
        tip_email.style.display = "inline-block";
        tip_email.innerHTML = "请输入正确的邮箱格式";
        tip_email.classList.add("my-tip");
        tip_email2.style.display = "inline-block";
        flag = 1;
    }

    if(v_phone_number == ""){
        tip_phone.style.display = "inline-block";
        tip_phone.innerHTML = "电话不能为空";
        tip_phone.classList.add("my-tip");
        tip_phone2.style.display="inline-block";
        flag = 1;
    }else if(v_phone_number.length < 7){
        tip_phone.style.display = "inline-block";
        tip_phone.innerHTML = "电话号码不能小于7个字符";
        tip_phone.classList.add("my-tip");
        tip_phone2.style.display="inline-block";
        flag = 1;
    }else if(!reg_phone.test(v_phone_number)){
        tip_phone.style.display = "inline-block";
        tip_phone.innerHTML = "请输入正确的电话号";
        tip_phone.classList.add("my-tip");
        tip_phone2.style.display="inline-block";
        flag = 1;
    }

    if(flag == 0){
        var myform = document.getElementById("my-form");
        myform.submit();
    }
}
