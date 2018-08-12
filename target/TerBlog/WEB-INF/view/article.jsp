<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/8
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>文章</title>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="Loswkl Me - Loswkl Group" />
    <meta name="keywords" content="Loswkl Me - Loswkl Group" />
    <!--[if lte IE 8]><script src="${pageContext.request.contextPath}/details/css/ie/html5shiv.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/details/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/details/js/skel.min.js"></script>
    <script src="${pageContext.request.contextPath}/details/js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/details/css/skel.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/details/css/style.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/details/css/style-wide.css" />


    </noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/details/css/ie/v8.css" /><![endif]-->
</head>
<body>




<!-- Header -->
<div id="header">
    <!--<span class="logo icon fa-paper-plane-o"></span>-->
    <h1>${article.title}</h1>
    <h6>${article.data} ${article.time}</h6>

</div>

<!-- Main -->
<div id="main">

    <header class="major container small">
        <h4>${article.content}
        </h4>

        <!-- 	break the universe
<ul class="actions">
            <li><a href="https://loswkl.win/?p=154" class="button">更多详情</a></li>
        </ul>
            <p>Tellus erat mauris ipsum fermentum<br />
            etiam vivamus nunc nibh morbi.</p>-->



    </header>
</div>
<ul class="actions">
    <li><a href="#" class="button">返回首页</a></li>
</ul>

<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">
        <center>Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">M**ter</a>. All rights
            reserved. Hosted in GitHub
        </center>
    </div>
</div>
</body>
</html>

