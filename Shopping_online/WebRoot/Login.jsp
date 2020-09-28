<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Shopping_online</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	
	.wrapper{
	height:200px;
	width:300px;
	border:1px #666 solid;
	margin-top:170px;
	}
	
	.register{
	margin-top:-42px;
	margin-left:130px;
	}
	
	.register input{
	border-radius:50%;
	}
	
	.login_1 input{
	border-radius:50%;
	margin-left:-120px;
	margin-top:10px;
	}
	
	.login_1 i{
	position: absolute;
	float: left;
	}
	</style>
	
	
	
  </head>
  
  <body>
  <center>
  <div class="wrapper">
  
  <div class="Login">
  <h1>登录</h1>
    <form id="indexform" name="indexform" onsubmit="return userCheck()" method="post" action="Shopping_page/deal_with_Login.jsp">
    <div class="user">
        用户名：
    <input type="text" name="username">
    </div>
    <br>
    <div class="password">
     &nbsp;&nbsp;&nbsp;&nbsp;密码：
    <input type="password" name="password">
    </div>
    
    <div class="login_1">
    <i class="fas fa-user"></i>
    <input type="submit" name="submit" value="登录" style='background-color:#00a7d0'>
    </div>
    </form>
    
    <div class="register">
    
    <form action="register.jsp">
<table>
    <tr>
    <td><input type="submit" name="register" value="注册" style='background-color:yellow'></td>
    </tr>
    </table>
    </form>
    </div>
    </div>
 </div>   
    
    
    <script type="text/javascript">
    function userCheck(){
    if(document.indexform.username.value==""){
    window.alert("请输入用户名");
    return false;
    
    }
    if(document.indexform.password.value==""){
    window.alert("请输入密码");
    return false;
    
    }
    }
    
    </script>
    </center>
  </body>
</html>
