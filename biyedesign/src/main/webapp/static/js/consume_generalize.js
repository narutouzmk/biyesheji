/**
 * Created by BIN on 2018/5/25.
 */

//part1
var input_life = document.getElementById("input_life");
var input_lesson = document.getElementById("input_lesson");
var input_entertainment = document.getElementById("input_entertainment");
var input_invest = document.getElementById("input_invest");
var input_other = document.getElementById("input_other");
var sub_generalize = document.getElementById("sub_generalize");

//part2
var input_note = document.getElementById("input_note");
var sub_note = document.getElementById("sub_note");


//part1_f
sub_generalize.onclick = function(){
    var life = input_life.value;
    var lesson = input_lesson.value;
    var entertainment = input_entertainment.value;
    var invest = input_invest.value;
    var other = input_other.value;

    var tag = 0;

    if(life == "" || life == null){
        input_life.value = 0;
    }else {
        tag = 1;
    }

    if(lesson == "" || lesson == null){
        input_lesson.value = 0;
    }else {
        tag = 1;
    }

    if(entertainment == "" || entertainment == null){
        input_entertainment.value = 0;
    }else {
        tag = 1;
    }

    if(invest == "" || invest == null){
        input_invest.value = 0;
    }else {
        tag = 1;
    }

    if(other == "" || other == null){
        input_other.value = 0;
    }else {
        tag = 1;
    }

    if(tag == 0){
        alert("请至少输入一项再进行提交");
        return false;
    }else {
        var form_generalize = document.getElementById("form_generalize");
        form_generalize.submit();
    }
}

//part2_f
sub_note.onclick = function(){
    var text_note = input_note.value;
    var flag = 0;

    if(text_note == "" || text_note == null){
        alert("请不要提交空日志");
    }else {
        flag = 1;
    }

    if(flag == 1){
        var form_note = document.getElementById("form_note");
        form_note.submit();
    }
}

//part2

//form_note
//
//input_note
//
//sub_note