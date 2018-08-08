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

<!doctype html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>TerBlog - 登陆系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">

</head>
<body background="https://loswkl-1252650524.cos.ap-beijing.myqcloud.com/WL/bj.png">

<div class="login">
    <div class="message">TerBlog - 登陆系统</div>
    <div id="darkbannerwrap"></div>

    <form id="loginform" action="login" enctype="multipart/form-data" method="post">
        <input type="text" placeholder="用户名" name="username" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input lay-verify="required" type="password" placeholder="密码" name="password" class="layui-input">
        <hr class="hr15">
        <input class="loginin" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20" >
        <div>
            ${param.msg}
        </div>
    </form>
</div>
<!-- 底部结束 -->
</body>
</html>













































﻿    <!--<!DOCTYPE html>
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
    </div>/images/bj.png

</div>

</body>
</html>-->
