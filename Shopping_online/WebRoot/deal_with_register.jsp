<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deal_with_register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="refresh" content="3;url=Login.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <jsp:useBean id="JDBConnection" class="Bean.JDBConnection" scope="session"></jsp:useBean>
<jsp:setProperty name="JDBConnection" property="*"/>
<%
String usernames=new String(request.getParameter("usernames").getBytes("ISO8859_1"),"utf-8");
String passwords=new String(request.getParameter("passwords").getBytes("ISO8859_1"),"utf-8");
String names=new String(request.getParameter("name").getBytes("ISO8859_1"),"utf-8");
String gender=new String(request.getParameter("gender").getBytes("ISO8859_1"),"utf-8");
String phone=new String(request.getParameter("phone").getBytes("ISO8859_1"),"utf-8");
String email=new String(request.getParameter("email").getBytes("ISO8859_1"),"utf-8");
String address=new String(request.getParameter("address").getBytes("ISO8859_1"),"utf-8");

String sql=new String("select * from Login_table where usernames=? and passwords=?");

ResultSet rs=JDBConnection.executeQuery(sql,usernames,passwords);

int i=0;

while(rs.next()){
if(rs.getString(2).equals(usernames)){
i=0;break;
}else{
i++;
}
}

if(i!=0){
Boolean bool=JDBConnection.executeUpdate(usernames,passwords,names,phone,gender,email,address);
%>
<h1 align="center">注册成功</h1>
<%
}else{
%>
<h1 align="center">该用户名已经注册过了！请重新注册！</h1>

<%
}
 %>
  </body>
</html>
