/**
 * Created by BIN on 2018/5/25.
 */
var input_item = document.getElementById("input_item");
var input_count = document.getElementById("input_count");
var my_submit = document.getElementById("my_submit");

my_submit.onclick = function(){
    var x = input_item.value;
    var y = input_count.value;
    var flag = 0;

    if(x == "" || x == null || y == "" || y == null){
        alert("项目名和金额都不能为空");
    }else{
        flag = 1;
    }


    if(flag == 1){
        var my_form_c = document.getElementById("form_note");
        my_form_c.submit();
    }
}
