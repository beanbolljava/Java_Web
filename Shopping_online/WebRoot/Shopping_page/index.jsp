<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'Shopping_online.jsp' starting page</title>
    <style>
    body{
    background-color:#F6F6F6;
    }
    
    .Shopping_page_down{
    margin-top:-700px;
    }
    </style>



</head>
  
  <body>
  
  
  <div class="wrapper-index">
  
  <div class="Shopping_page_top">
  <%@include file="Shopping_page_top_Login.jsp" %>
  </div>
  
<div class="Shopping_page_left">
<%@include file="Shopping_page_left.jsp" %>
</div>
 
<div class="Shopping_page_right">
<%@include file="Shopping_page_right.jsp" %>
</div>


<div class="Shopping_page_down">
<%@include file="Shopping_page_down.jsp" %>
</div>


  </div>
  
  </body>
</html>
