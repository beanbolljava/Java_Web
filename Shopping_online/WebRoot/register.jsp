<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
 
    <form  action="deal_with_register.jsp" method="post" id="register" name="register" onsubmit="return userCheck()">
    <center>
    <h1 font-size="60pt">register</h1>
    <table border="1" width="17%">
    <tr>
    <td>
    用户名：
    </td>
    <td><input type="text" name="usernames" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
    </tr>
    <tr>
    <td>
    密码：
    </td>
    <td>
    <input type="password" name="passwords" onkeyup="this.value=this.value.replace(/\D/g,'')">
    </td>
    </tr>
    
    <tr>
    <td>确认密码：</td>
    <td><input type="password" name="repasswords" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
    </tr>
    
    <tr>
    <td>
    姓名：
    </td>
    
    <td>
    <input type="text" name="name"  onkeyup="value=value.replace(/[\d]/g,'') ">
    </td>
    </tr>
    
    
    <tr>
    <td>
    电话：
    </td>
    
    <td>
    <input type="text" name="phone" onkeyup="this.value=this.value.replace(/\D/g,'')">
    </td>
    </tr>
    
    
    <tr>
    <td>
    性别：
    </td>
    
    <td>
    <input type="radio" name="gender" value="男" >男
    <input type="radio" name="gender" value="女"  checked="checked">女
    </td>
    </tr>
    
    <tr>
    <td>
   邮箱：
    </td>
    
    <td>
    <input type="text" name="email" >
    </td>
    </tr>
    
    <tr>
    <td>
   地址：
    </td>
    
    <td>
    <input type="text" name="address" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')">
    </td>
    </tr>
    
    
    <tr>
    <td>
    <input type="submit" name="register" value="注册">
    </td>
    
    <td>
    <input type="button" name="return" value="返回">
    </td>
    </tr>
    
    </table>
    </center>
    </form>
    
    <script type="text/javascript">
    function userCheck(){
    
    
    if(document.register.usernames.value==""){
    window.alert("请输入用户名(用户名的长度要大于6位)");
    return false;
    
    }
    if(document.register.passwords.value==""){
    window.alert("请输入密码(密码的长度要大于6位)");
    return false;
    
    }
    
    if(document.register.repasswords.value==""){
    window.alert("请输入确认密码");
    return false;
    
    }
    
    if(document.register.name.value==""){
    window.alert("请输入姓名");
    return false;
    
    }
    
    if(document.register.phone.value==""){
    window.alert("请输入电话");
    return false;
    
    }
    
    
    if(document.register.email.value==""){
    window.alert("请输入邮箱");
    return false;
    
    }
    
    }
    </script>
  </body>
</html>
