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
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TerBlog 个人信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
    <meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />




    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->

    <!-- Animate.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/bootstrap.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/style.css">

    <!-- Modernizr JS -->
    <script src="${pageContext.request.contextPath}/user/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body style="background-image: url(${pageContext.request.contextPath}/user/images/bg_img.jpg);">

<div id="fh5co-main">
    <div class="fh5co-tab-wrap">
        <ul class="fh5co-tab-menu">
            <li class="active"><a href="#" data-tab="1"><span class="menu-text">TerBlog　个人信息</span></a></li>
        </ul>
        <div class="fh5co-tab-content active" data-content="1">
            <div class="fh5co-content-inner text-center">
                <div class="row row-bottom-padded-sm">
                    <div class="col-md-12">
                        <figure>
                            <img src="${pageContext.request.contextPath}/user/images/profile_img.png" alt="Free HTML5 Wesbite Template by FreeHTML5.co">
                        </figure>
                        <h1>${user.nickname}</h1>
                        <p style="text-align:center"><center>
                        <table align='center' border='0' cellspacing='0' >
                            <tr>
                                <td>#</td>
                                <td>${user.id}</td>
                            </tr>
                            　　　
                            <tr>
                                <td>用户名： </td>
                                <td>${user.username}</td>
                            </tr>
                            <tr>
                                <td>头像： </td>
                                <td>${user.headportrait}</td>
                            </tr>
                            <tr>
                                <td>注册时间： </td>
                                <td>${user.registrationdate}</td>
                            </tr>
                            <tr>
                                <td>权限组： </td>
                                <td>${user.administrator}</td>
                            </tr>
                            <tr>
                                <td>性别： </td>
                                <td>${user.sex}</td>
                            </tr>
                            <tr>
                                <td>电子邮件： </td>
                                <td>${user.email}</td>
                            </tr>
                            <tr>
                                <td>电话号码： </td>
                                <td>${user.phonenumber}</td>
                            </tr>
                            <tr>
                                <td>个性签名： </td>
                                <td>${user.signature}</td>
                            </tr>
                        </table></p>
                    </div>
                </div>
                <!-- <div class="row">
                    <div class="col-md-12 fh5co-counter">
                        <div class="fh5co-number fh5co-left">10</div>
                        <div class="fh5co-text">
                            <h3 class="border-bottom">Years of experience in Web Design</h3>
                            <p>Far far away, behind the word mountains, far from the countries.</p>
                        </div>
                    </div>
                </div> -->
                <!-- <ul class="fh5co-social">
                    <li><a href="#"><i class="icon-envelope"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-instagram"></i></a></li>
                    <li><a href="#"><i class="icon-google"></i></a></li>
                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                </ul> -->
            </div>
        </div>
    </div>
    <footer id="fh5co-footer">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <small>
                    Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">Mxnter</a>. All rights reserved.
                    <br>内容来源 TerBlog 未经授权严禁使用
                </small>
            </div>
        </div>
    </footer>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/user/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="${pageContext.request.contextPath}/user/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/user/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath}/user/js/jquery.waypoints.min.js"></script>
<!-- Easy PieChart -->
<script src="${pageContext.request.contextPath}/user/js/jquery.easypiechart.min.js"></script>
<!-- MAIN JS -->
<script src="${pageContext.request.contextPath}/user/js/main.js"></script>

</body>
</html>


