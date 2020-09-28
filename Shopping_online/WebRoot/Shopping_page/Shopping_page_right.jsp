<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>
	/*
	
	
	*/
	.right_center .Special_Offer{
	height:200px;
	width:400px;
	
	}

	
	
	.right_top{
	margin-left:300px;
	margin-top:-920px;
	}
	
	
	.right_center{
	margin-top:-90px;
	}
	 
	 
    
.banner{
    position: relative;
    height: 460px;
    
}

.img-list li{
    position: absolute;
}

.img-list li:nth-child(1){
z-index:1;
}

.banner img{
margin-top:4px;
margin-left:-40px;
    width: 100%;
    vertical-align: top;
}   
.banner-wrapper .banner{
margin-top:4px;
}    

.pointer{
    position: absolute;
    bottom: 100px;
    right: 70px;
}

.pointer a{
    float: left;
    width: 8px;
    height: 8px;
    border: 2px solid rgba(255,255,255,0.4);
    border-radius: 50%;
    background-color: rgba(0, 0, 0, 0.4);
    margin-left: 6px;
}

.pointer a:hover, .pointer a.active{
    border-color: rgba(0, 0, 0, 0.4);
    background-color: rgba(255,255,255,0.4);
}

.prev-next a{
    width: 41px;
    height: 69px;
    background-image: url(goods/icon-slides.png);
    position: absolute;
    top: 0;
    bottom: 0;
    margin-left:-234px;
    margin-top:170px;
}


.prev-next .prev{
    left: 234px;
    background-position: -84px 0;
}

.prev-next .prev:hover{
    background-position: 0 0;
}

.prev-next .next{

    margin-left:984px;
    background-position: -125px 0;
}

.prev-next .next:hover{
    background-position: -42px 0;
}
	</style>

    

  </head>
  
  <body>
  <div class="right_top">
  
  
  <div class="banner-wrapper">
        <div class="banner">
            <ul class="img-list">
                <li >
                    <a href="#">
                        <img src="./goods/_xiaomi_01.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./goods/_xiaomi_02.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./goods/_xiaomi_03.webp" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./goods/_xiaomi_04.webp" alt="">
                    </a>
                </li>
                
            </ul>

            <div class="pointer" >
                <a class="active" href="javascript:;"></a>
                <a href="javascript:;"></a>
                <a href="javascript:;"></a>
                <a href="javascript:;"></a>
                <a href="javascript:;"></a>
            </div>

            <div class="prev-next">
                <a class="prev" href="javascript:;" ></a>
                <a class="next" href="javascript:;" ></a>
            </div>
        </div>
    </div>
  
  <div class="right_center">
    <h2>每日特价</h2>
    <hr>
   <div class="Special_Offer">
   <%@include file="Apple.jsp" %>
</div>
    </div>
    
    
    </div>
  </body>
</html>
