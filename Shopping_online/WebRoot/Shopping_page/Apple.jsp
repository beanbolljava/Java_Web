<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'Apple.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="../icon/css/all.css">
<style>

.wrapper_apple_out-1{

height:304px;
width:254px;
margin-left:10px;
}

.wrapper_apple_out-2{

height:304px;
width:254px;
margin-left:274px;
margin-top:-304px;
}

.wrapper_apple_out-3{

height:304px;
width:254px;
margin-left:538px;
margin-top:-304px;
}

.wrapper_apple_out-4{

height:304px;
width:254px;
margin-left:802px;
margin-top:-304px;
}

.wrapper_apple{
height:100%;

}

.wrapper_apple:hover{
border:2px red solid;
}

    .information .pay_apple {
        color: #666666;
        padding-left: 150px;
    }

    .wrapper_apple img {
        height: 150px;
        width:250px;
        transition: all 0.3s;
    }

    .wrapper_apple img:hover {
        -webkit-transform: translateY(-10px);
        -moz-transform: translateY(-10px);
        -ms-transform: translateY(-10px)
    }

    .wrapper_apple .information .men {
        font-size: 16px;
        color: #4E4E4E;
    }

    .wrapper_apple .information .men:hover {
        color: #c81623;
    }

    .wrapper_apple .share a{
        color: #c81623;
        margin-left: 130px;
        text-decoration: none;
    }

    .information h3 {
        color: red;
        margin-top: 0px;
    }

    
    .wrapper_apple .information .yan {
        color: #4E4E4E;
    }

  

    .wrapper_apple .information .yan:hover {
        color: #c81623;
    }

    
</style>
  </head>
  
  <body>
  <jsp:useBean id="JDBConnection" class="Bean.JDBConnection" scope="session"></jsp:useBean> 
<jsp:setProperty name="JDBConnection" property="*"/>

<jsp:useBean id="Information" class="goods.Information" scope="session"></jsp:useBean> 
<jsp:setProperty name="Information" property="*"/>

<jsp:useBean id="Information_Banana" class="goods.Information_Banana" scope="session"></jsp:useBean> 
<jsp:setProperty name="Information_Banana" property="*"/>

<jsp:useBean id="Information_jacket" class="goods.Information_jacket" scope="session"></jsp:useBean> 
<jsp:setProperty name="Information_jacket" property="*"/>

<jsp:useBean id="Information_pear" class="goods.Information_pear" scope="session"></jsp:useBean> 
<jsp:setProperty name="Information_pear" property="*"/>

<%
String sql="select * from goods order by Buy desc";
ResultSet rs=JDBConnection.executeQuery_id(sql);
int i=0;
 %>
<%
while(rs.next()){
i++;
%>
<div class="wrapper_apple_out-<%=i %>">
    <div class="wrapper_apple">
    
    <div class="_img">
        <a href="goods_Information_<%=i %>.jsp"><img src="<%=rs.getString(6) %>"></a>
        
    </div>
    
    <div class="information">
        <h3>￥<%=rs.getFloat(4) %><%=rs.getString(9) %> 包邮</h3>
        <a class="yan" href="#">
            <%=rs.getString(8) %>
        </a>
        <br>
        <a class="men" href="#">
            <%=rs.getString(5) %>
        </a>

        <br>
        <b class="pay_apple">
            <!--            TODO:需要从数据库调用-->
            <%=rs.getInt(10) %>人购买
        </b>
    </div>
    
    <div class="share">
        <a href="Shopping_Cart_dealwith.jsp"><i class="fas fa-cart-arrow-down"></i> 加入购物车 </a>
        <i class="fas fa-qq"></i>
    </div>
    
    
    <%  
    
    if(i==1){
        
        String stype=rs.getString(2);
        Information.setstype(stype);
    
        String sname=rs.getString(3);
        Information.setsgoodname(sname);
            
        String spic=rs.getString(6);
        Information.setspic(spic);
        
        Float sprice=rs.getFloat(4);
        Information.setsprice(sprice);
        
        String sdanwei=rs.getString(9);
        Information.setsdanwei(sdanwei);
        
        String sinformation=rs.getString(8);
        Information.setsinformation(sinformation);
        
        String sfactory=rs.getString(5);
        Information.setsfactory(sfactory);
        
        int sbuy=rs.getInt(10);
        Information.setsbuy(sbuy);
        }
        else if(i==2){
        
        String stype=rs.getString(2);
        Information_Banana.setstype(stype);
    
        String sname=rs.getString(3);
        Information_Banana.setsgoodname(sname);
            
        String spic=rs.getString(6);
        Information_Banana.setspic(spic);
        
        Float sprice=rs.getFloat(4);
        Information_Banana.setsprice(sprice);
        
        String sdanwei=rs.getString(9);
        Information_Banana.setsdanwei(sdanwei);
        
        String sinformation=rs.getString(8);
        Information_Banana.setsinformation(sinformation);
        
        String sfactory=rs.getString(5);
        Information_Banana.setsfactory(sfactory);
        
        int sbuy=rs.getInt(10);
        Information_Banana.setsbuy(sbuy);
        
        }
        else if(i==3){
        
        String stype=rs.getString(2);
        Information_jacket.setstype(stype);
    
        String sname=rs.getString(3);
        Information_jacket.setsgoodname(sname);
            
        String spic=rs.getString(6);
        Information_jacket.setspic(spic);
        
        Float sprice=rs.getFloat(4);
        Information_jacket.setsprice(sprice);
        
        String sdanwei=rs.getString(9);
        Information_jacket.setsdanwei(sdanwei);
        
        String sinformation=rs.getString(8);
        Information_jacket.setsinformation(sinformation);
        
        String sfactory=rs.getString(5);
        Information_jacket.setsfactory(sfactory);
        
        int sbuy=rs.getInt(10);
        Information_jacket.setsbuy(sbuy);
        }
        else if(i==4){
        
        String stype=rs.getString(2);
        Information_pear.setstype(stype);
    
        String sname=rs.getString(3);
        Information_pear.setsgoodname(sname);
            
        String spic=rs.getString(6);
        Information_pear.setspic(spic);
        
        Float sprice=rs.getFloat(4);
        Information_pear.setsprice(sprice);
        
        String sdanwei=rs.getString(9);
        Information_pear.setsdanwei(sdanwei);
        
        String sinformation=rs.getString(8);
        Information_pear.setsinformation(sinformation);
        
        String sfactory=rs.getString(5);
        Information_pear.setsfactory(sfactory);
        
        int sbuy=rs.getInt(10);
        Information_pear.setsbuy(sbuy);
        }
        
        
        
         %>
    
</div>
</div>

<%
if(i>=4){
break;
}

}
 %>
  
  </body>
</html>
