/**
 * Created by BIN on 2018/5/25.
 */
var occupations = document.getElementById("occupations");
var Age = document.getElementById("Age");
var wages = document.getElementById("wages");
var capital = document.getElementById("capital");
var monthConsume = document.getElementById("monthConsume");
var descriptions = document.getElementById("descriptions");

var sub_person_info = document.getElementById("sub_person_info");

sub_person_info.onclick = function(){
    var occupation = occupations.value;
    var age = Age.value;
    var wage = wages.value;
    var my_capital = capital.value;
    var month_consume = monthConsume.value;
    var des = descriptions.value;
    var tag = 0;

    console.log(occupation);
    console.log(age);
    console.log(wage);
    console.log(my_capital);
    console.log(month_consume);
    console.log(des);
    if(occupation != "" && occupation != null && occupation != undefined){
        tag = 1;
    }
    if(age != "" && age != null && age != undefined){
        tag = 1;
    }
    if(wage != "" && wage != null && wage != undefined){
        tag = 1;
    }
    if(my_capital != "" && my_capital != null && my_capital != undefined){
        tag = 1;
    }
    if(month_consume != "" && month_consume != null && month_consume != undefined){
        tag = 1;
    }
    if(des != "" && des != null && des != undefined){
        tag = 1;
    }
    if(tag == 1){
        var form_info = document.getElementById("form_info");
        form_info.submit();
    }else {
        alert("请至少输入一项再进行提交");
        return false;
    }
}