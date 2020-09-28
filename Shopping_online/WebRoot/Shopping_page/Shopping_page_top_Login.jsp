<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'Shopping_page_top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="../icon/css/all.css">
<style type="text/css">
.nav{
			list-style: none;
			background-color: #333333;
			width: 1200px;
			/*height: 45px;*/
			margin-left:60px;
			margin-top:0px;
			overflow: hidden;
			zoom: 1;
			
		}
		.nav li{
			float: left;
			width: 20%;
		}
		.nav a{
			width: 100%;
			display: inline-block;
			text-align: center;
			padding: 5px 0px;
			text-decoration: none;
			color: white;
			font-weight: bold;
			color:#A4B0B0;
		}
		.nav a:hover{
			background-color: white;
		}
		
		
		.top_right{
		margin-top:-100px;
		margin-left: 500px;
		}
		
		.top_right a{
		color:#666;
		
		}
		
		.top_right a:hover{
		color:red;
		}
		
		.select{
		margin-left:1100px;
		margin-top:50px;
		}
		
		.top_left{  
                height:100px;
                width:300px;
                transition: all 0.6s;  
            }  
         .top_left:hover{  
                transform: scale(1.2);  
            }
            
            .nav .nav_pre{
            color:white;
            margin-top:3px;
            margin-left:0px;
            }
            
            .hellow{
            height:0px;
            margin-left:400px;
            }
            
            .search-btn{
    
    height: 22px;
    width: 30px;
    margin-left:-5px;
    margin-top:0px;
    border: none;
    background-color: #fff;
    color: #616161;
    font-size: 16px;
    border: 1px solid rgb(224, 224, 224);
}

.search-btn:hover{
    background-color: #ff6700;
    color: red;
    border: none;
}
            
		</style>
  </head>
  
  <body>
  <div class="wrapper-top">
  <div class="top_left">
  
   <a href="../Login.jsp"><img src="goods/_Logo.png" height=100px width=300px;/></a>
</div>


<div class="top_right">
<a href="../Login.jsp"><img src="goods/timg.jpg" height="15" width="15"></a>
登录成功
</div>
</div>

<div class="hellow">
<h4><%
out.print("欢迎您"+session.getAttribute("name")+" "+"现在的时间是：");
    java.util.Date nowday=new java.util.Date();
    int h=nowday.getHours();

    if(h>0&&h<6){
    out.print(h+"hours GoodMorning");
    }
    if(h>=6&&h<=12){
    out.print(h+"hours goodnoon ");
    }
    if(h>12&&h<17){
    out.print(h+"hours goodafternoon");
    }
    if(h>=17&&h<24){
    out.print(h+"hours Good evening");
    }
     %></h4>
</div>

<div class="select">
<form name="select" action="select_dealwith.jsp">

<input type="text" name="select">
<button class="search-btn">
    <i class="fas fa-search"></i>
</button>

</form>
</div>


    <ul class="nav">
    <li class="nav_pre">商品分类</li>
		<li><a href="index.jsp"><i class="fas fa-home"></i> 首页</a></li>
		<li><a href="Shopping_Cart_dealwith.jsp"><i class="fas fa-cart-arrow-down"></i> 购物车</a></li>
		<li><a href="Shopping_page/fresh.jsp"><i class="fas fa-tasks"></i> 订单信息</a></li>
		<li><a href="About_us.jsp"><i class="fas fa-user"></i> 关于我们</a></li>
	</ul>
  </body>
</html>
