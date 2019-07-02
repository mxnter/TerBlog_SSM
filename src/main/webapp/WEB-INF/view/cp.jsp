<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/4
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String value = request.getParameter("msg");
    if (null == value) {
        String c = value;
    } else {
        String a = value;
    }

%>

<!doctype html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <title>TerBlog - 修改密码</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon"/>

    <script type="text/javascript">
        var password;

        function password1t() {
            var password1 = document.getElementById("password").value;
            var reg = /^.{6,}$/;
            if( password1 == null || password1 == ""||password1 == undefined ){
                document.getElementById("ts").innerHTML="密码不能为空";
            }else if(!reg.test(password1)){
                document.getElementById("ts").innerHTML="请输入一个大于6位的密码";
            }else{
                password=password1;
                document.getElementById("ts").innerHTML="";

            }
        }
        function password2t() {
            var password2 = document.getElementById("affirmpassword").value;
            if( password2 == null || password2 == ""||password2 == undefined ){
                document.getElementById("ts").innerHTML="确认密码不能为空";
            }else if(password2 != password){
                document.getElementById("ts").innerHTML="两次密码不一致";
            }else{
                document.getElementById("ts").innerHTML="";
            }
        }

    </script>

</head>
<body background="https://loswkl-1252650524.cos.ap-beijing.myqcloud.com/WL/bj.png">

<div class="login">
    <div class="message">TerBlog - 修改密码</div>
    <div id="darkbannerwrap"></div>

    <form id="loginform" action="ChangePassword" enctype="multipart/form-data" method="post">
        <input type="text" placeholder="用户名" name="username" lay-verify="required" class="layui-input"
               value="<%=session.getAttribute("username")%>" readonly="readonly">
        <hr class="hr15">
        <input lay-verify="required" type="password" placeholder="密码" name="password" id="password" class="layui-input" onBlur="password1t()" >
        <hr class="hr15">
        <input lay-verify="required" type="password" placeholder="确认密码" name="affirmpassword" id="affirmpassword" class="layui-input" onBlur="password2t()">
        <hr class="hr15">
        <input class="loginin" value="修改" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr15">
        <div>
            <center><font color="red"> ${msg} <p id="ts"></p></font></center>
        </div>
    </form>
</div>
<!-- 底部结束 -->
</body>
</html>

