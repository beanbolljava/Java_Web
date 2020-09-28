<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录验证</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

<jsp:useBean id="JDBConnection" class="Bean.JDBConnection" scope="session"></jsp:useBean>
<jsp:setProperty name="JDBConnection" property="*"/>
<% 
int i=0;
String usernames=new String(request.getParameter("username").getBytes("ISO8859_1"),"GBK");
    String passwords=new String(request.getParameter("password").getBytes("ISO8859_1"),"GBK");
String sql="select * from Login_table where usernames=? and passwords=?";
ResultSet rs=JDBConnection.executeQuery(sql,usernames,passwords);
while(rs.next()){
if(rs.getString(2).equals(usernames)&&rs.getString(3).equals(passwords)){
i++;
session.setAttribute("name",usernames);
break;
}else{
i=0;
continue;
}
}
if(i==1){
%>
<jsp:forward page="index.jsp"/>
<%
}
if(i==0){
%>
<p class="information">用户名或密码错误</p>
<%
}
%>
  </body>
</html>
