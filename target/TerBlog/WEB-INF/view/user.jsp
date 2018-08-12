<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/7
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
﻿<!DOCTYPE html>
<html>
<head>
    <title>TerBlog - 个人信息</title>
    <meta name="keywords" content="TerBlog - 个人信息"/>
    <meta name="description" content="TerBlog - 个人信息"/>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/css/home.css?v=2" rel="stylesheet" type="text/css"/>
</head>
<body background="https://loswkl-1252650524.cos.ap-beijing.myqcloud.com/WL/bj.png">
<div class="container">
    <div class="register-box">
        <div class="reg-slogan">TerBlog - 个人信息</div>
        <div class="reg-form" id="js-form-mobile"><br>
            <br>
            <center>
                <table align='center' border='1' cellspacing='0'>
                    <c:forEach items="${users}" var="c" varStatus="st">
                        <tr>
                            <td>id</td>
                            <td>${c.id}</td>
                        </tr>
                        <tr>
                            <td>username</td>
                            <td>${c.username}</td>
                        </tr>
                        <tr>
                            <td>password</td>
                            <td>${c.password}</td>
                        </tr>
                        <tr>
                            <td>nickname</td>
                            <td>${c.nickname}</td>
                        </tr>
                        <tr>
                            <td>headportrait</td>
                            <td>${c.headportrait}</td>
                        </tr>
                        <tr>
                            <td>registrationdate</td>
                            <td>${c.registrationdate}</td>
                        </tr>
                        <tr>
                            <td>administrator</td>
                            <td>${c.administrator}</td>
                        </tr>
                        <tr>
                            <td>sex</td>
                            <td>${c.sex}</td>
                        </tr>
                        <tr>
                            <td>email</td>
                            <td>${c.email}</td>
                        </tr>
                        <tr>
                            <td>phonenumber</td>
                            <td>${c.phonenumber}</td>
                        </tr>
                        <tr>
                            <td>signature</td>
                            <td>${c.signature}</td>
                        </tr>
                    </c:forEach>
                </table>
                <br><br><br><br><br>
                <a href="./">返回首页</a>
            </center>
            <div>


            </div>
        </div>
        <div class="footer">
            <font size="2" face="华文细黑">


                <br>Copyright © 2016-2018 Mxnter Group </font>
        </div>
    </div>
    <!--<div class="footer">
        <p>Copyright © 2016-2017 Loswkl Group | WeChat：loswkl </p>
    </div>/images/bj.png-->

</div>

</body>
</html>

