var mypassword = document.getElementById("my-password");
var mysubmit = document.getElementById("my-sub-button");

var tip_password = document.getElementById("my-password-tip");
var tip_password2 = document.getElementById("my-password-tip2");

//匹配密码
var reg_password = new RegExp(/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,21}$/);

mypassword.onblur = function(){
    if(mypassword.value == ""){
        tip_password.style.display = "inline-block";
        tip_password.innerHTML = "密码不能为空";
        tip_password.classList.add("my-tip");
        tip_password2.style.display = "inline-block";
    }
}

mypassword.onfocus = function(){
    tip_password.style.display = "none";
    tip_password2.style.display = "none";
}

mysubmit.onclick = function(){
    var v_password = mypassword.value;
    var flag = 0;

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

    if(flag == 0){
        var myform = document.getElementById("my-form");
        myform.submit();
    }
}
