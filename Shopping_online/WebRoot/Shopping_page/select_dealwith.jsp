<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'select_dealwith.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>

.wrapper_car{

height:250px;
width:700px;
margin:0 auto;

}

.right_car{
margin-left:230px;
margin-top:-220px;
}

</style>
  </head>
  
  
  
  <body>
  
  <div class="Shopping_page_top_select">
  <%@include file="Shopping_page_top_Login.jsp" %>
  </div>
  
  <jsp:useBean id="JDBConnection" class="Bean.JDBConnection" scope="session"></jsp:useBean> 
<jsp:setProperty name="JDBConnection" property="*"/>
<%
String sel=new String(request.getParameter("select").getBytes("ISO8859_1"),"GBK");
String sql="select * from goods where goodsname like ?";
String select="%"+sel+"%";
ResultSet rs=JDBConnection.executeQuery_goods(sql,select);
 %>
 <div class="Shopping_car">
 <%
 while(rs.next()){
 String pic=new String(rs.getString(6));
 %>
 
 <div class="wrapper_car">
 <div class="car_left">
<a href="#"><img src="<%=rs.getString(6) %>" height=200px width=200px></a>
 </div>
 
 <div class=right_car>
 
 <div class="right_car_top">
 <h1><%=rs.getString(2) %><%=":" %> </h1><h3><%=rs.getString(3) %></h3>
 </div>
 
 <div class="right_car_top">
 <b>秒杀价：<%=rs.getFloat(4) %><%=rs.getString(9) %></b>
 </div>
 
 </div>
 </div>
 
 <%
 }
  %>
 
    </div>
    
    
   
  </body>
</html>
