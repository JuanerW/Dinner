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
    /************* More ingredients change color *************/
    $(".CT .content .content_c2 .food_material1 .more a").hover(function(){
        $(this).css({
            "color":"red",
            "text-decoration":"underline"
        });
    },function(){
        $(this).css({
            "color":"#3B3B3B",
            "text-decoration":"none"
        });
    });

    $(".food_material2 .food_up .food_u").mouseover(function(){
        $(this).toggleClass("food_p1");//Checks for the class specified in each element. Add the class if it does not exist, or remove it if it is already set. This is called the toggle effect
        $(this).find("a").toggleClass("food_p2");
        var index=$(this).index();
        $(".food_d").eq(index).css("display","block");
        $(".food_d").eq(index).siblings().css("display","none");
    });
