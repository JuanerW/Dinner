/* ################################    jqury    ################################ */

$(document).ready(function(){
/*############################Right side of the head####################################*/
$(".HD .header .header_deng ul li").hover(
    function(){
    $(this).css("background-color","#ffe4c4");
    $(this).find("a").css( "text-decoration","underline");}
    ,function(){
    $(this).css("background-color","#89b4cebd");
    $(this).find("a").css( "text-decoration","none")
});
/*############################Navigation section####################################*/
$(".DH .daohang ul li").hover(
    function(){
        $(this).css("background-color","#89b4cebd")//Override to change color
    },function(){
        $(this).css("background-color","#FFFFFF")
    });
