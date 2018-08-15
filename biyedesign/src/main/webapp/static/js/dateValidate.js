/**
 * Created by BIN on 2018/5/25.
 */
var m_form = document.getElementById("my_form");
var my_date = document.getElementById("my_date");
var my_sub = document.getElementById("my_sub");

my_sub.onclick = function(){
    var x = my_date.value;
    var flag = 0;

    if(x == "" || x == null){
        alert("请输入日期");
    }else{
        flag = 1;
    }

    if(flag == 1){
        m_form.submit();
    }
}

