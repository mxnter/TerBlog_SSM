<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/4
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String value=request.getParameter("msg");
    if(null==value){
        String	c=value;
    }else{
        String a=value;
    }

%>
﻿<!DOCTYPE html>
<html>
<head>
    <title>TerBlog - 登陆界面</title>
    <meta name="keywords" content="TerBlog - 登陆界面" />
    <meta name="description" content="TerBlog - 登陆界面" />
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/css/home.css?v=2" rel="stylesheet" type="text/css" />
</head>
<body  background="https://loswkl-1252650524.cos.ap-beijing.myqcloud.com/WL/bj.png" >
<div class="container">
    <div class="register-box">
        <div class="reg-slogan">TerBlog - 登陆界面</div>
        <div class="reg-form" id="js-form-mobile"> <br>
            <br>
            <center>
                <form id="loginform" action="login" enctype="multipart/form-data" method="post">
                    <h2>
                    用户名：<input type="text" placeholder="用户名" name="username"><br><br>
                    密　码：<input type="text" name="password" placeholder="密码"><br><br>
                    <input type="submit" value="登陆" >
                    </h2>
                </form>
                <br>
                <br>
                <h2>${param.msg}</h2>
            </center>
            <div>


            </div>
        </div>
        <div class="footer">
            <font size="2"   face="华文细黑">


                <br>Copyright © 2016-2018 Mxnter Group  </font>
        </div>
    </div>
    <!--<div class="footer">
        <p>Copyright © 2016-2017 Loswkl Group | WeChat：loswkl </p>
    </div>/images/bj.png-->

</div>

</body>
</html>
