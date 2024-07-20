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
    
    $(".food_material2 .food_up .food_u").mouseout(function(){
        $(this).toggleClass("food_p1");
        $(this).find("a").toggleClass("food_p2");
    });

/************* the food section of a restaurant *************/
    // $(".cookbook .book2  ul .cook2").hover(function(){//Food Bar Mouse Events
    //     $(this).find(".cook221").css("display","none");
    //     $(this).find(".cook222").css("display","block");
    // },function(){
    //     $(this).find(".cook222").css("display","none");
    //     $(this).find(".cook221").css("display","block");
    // });

    //Food Bar Optimized Slide Animation
    $(".cookbook .book2  ul .cook2").on("mouseenter", function () {
        var _this = $(this);
        _this.find("div.cook221").stop().animate({marginTop: "-60px"}, 400, function () {
        });
    });
    //鼠标离开
    $(".cookbook .book2  ul .cook2").on("mouseleave", function () {
        var _this = $(this);
        _this.find("div.cook221").stop().animate({marginTop: "0px"}, 400, function () {
        });
    });

    /***底部链接栏效果****/
    /*****鼠标覆盖变红***/
    $(".BM .bottom .bot_s dd a").hover(function(){
        $(this).css ({
            "color":"red",
            "text-decoration":"underline"
        });
    },function(){
        $(this).css({
            "color":"dimgrey",
            "text-decoration":"none"
        });
    });
    /*****鼠标覆盖变红***/
    $(".BM .bottom .bot_t .bot_t1 li").hover(function(){
        $(this).css("background-color","#cc3333") ;
    },function(){
        $(this).css("background-color","#3B3B3B");
    });

});

//onmouseover事件
function change1(lun,y){
    lun.index=y;
    var Time=document.getElementsByClassName("ctime2");
    var time2=Time[0].getElementsByClassName("time_2");
    for(var i=0;i<time2.length;i++){
        time2[i].style.color="black";
        time2[i].style.borderTop="3px solid black";
    }
    lun.style.color="#FF5151";
    lun.style.borderTop="3px solid #FF5151";

    var CTime=document.getElementsByClassName("ctime1");
    var time1=CTime[0].getElementsByClassName("time_1");
    for(var k=0;k<time1.length;k++){
        time1[k].style.display="none";
    }
    time1[lun.index].style.display="block";
}

var sign=false;//false代表没开夜间模式
function dakemode() {
    if(!sign){
        $("body").css("background-color", "rgba(7,4,0,0.56)")
        sign=true;
    }else{
        $("body").css("background-color","#ffe4c4");
        sign=false;
    }
}