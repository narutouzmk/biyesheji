/**
 * Created by BIN on 2018/5/17.
 */
var myloginname = document.getElementById("my-loginname");
var mypassword = document.getElementById("my-password");
var mysubmit = document.getElementById("my-sub-button");

var tip_name1 = document.getElementById("my-loginname-tip1");
var tip_name2 = document.getElementById("my-loginname-tip2");
var tip_password1 = document.getElementById("my-password-tip1");
var tip_password2 = document.getElementById("my-password-tip2");

//匹配密码
var reg_password = new RegExp(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,21}$/);


myloginname.onblur = function(){
    if(myloginname.value == ""){
        tip_name2.style.display = "inline-block";
        tip_name2.innerHTML = "用户名不能为空";
        tip_name2.classList.add("my-tip");
        tip_name1.style.display = "inline-block";
    }
}

mypassword.onblur = function(){
    if(mypassword.value == ""){
        tip_password2.style.display = "inline-block";
        tip_password2.innerHTML = "密码不能为空";
        tip_password2.classList.add("my-tip");
        tip_password1.style.display = "inline-block";
    }
}

myloginname.onfocus = function(){
    tip_name1.style.display = "none";
    tip_name2.style.display = "none";
}

mypassword.onfocus = function(){
    tip_password1.style.display = "none";
    tip_password2.style.display = "none";
}

mysubmit.onclick = function(){
    var v_loginname = myloginname.value;
    var v_password = mypassword.value;
    var flag = 0;

    if(v_loginname == ""){
        tip_name2.style.display = "inline-block";
        tip_name2.innerHTML = "用户名不能为空";
        tip_name2.classList.add("my-tip");
        tip_name1.style.display = "inline-block";
        flag = 1;
    }else if(v_loginname.length < 2){
        tip_name2.style.display = "inline-block";
        tip_name2.innerHTML = "用户名不能小于2个字符";
        tip_name2.classList.add("my-tip");
        tip_name1.style.display = "inline-block";
        flag = 1;
    }

    if(v_password == ""){
        tip_password2.style.display = "inline-block";
        tip_password2.innerHTML = "用户密码不能为空";
        tip_password2.classList.add("my-tip");
        tip_password1.style.display = "inline-block";
        flag = 1;
    }else if(v_password.length < 8){
        tip_password2.style.display = "inline-block";
        tip_password2.innerHTML = "密码不能小于6个字符";
        tip_password2.classList.add("my-tip");
        tip_password1.style.display = "inline-block";
        flag = 1;
    }else if(!reg_password.test(v_password)){
        tip_password2.style.display = "inline-block";
        tip_password2.innerHTML = "密码不能是纯字母或纯数字也不能是汉字";
        tip_password2.classList.add("my-tip");
        tip_password1.style.display = "inline-block";
        flag = 1;
    }

    if(flag == 0){
        var myform = document.getElementById("my-form");
        myform.submit();
    }
}