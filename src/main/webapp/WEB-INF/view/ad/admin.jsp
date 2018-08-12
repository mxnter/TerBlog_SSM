<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/7
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>管理系统 - TerBlog</title>
</head>
<body>
<%@include file="main.jsp" %>
<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">

        <li><i class="fa fa-paper-plane hover-bg"></i><font color="red"> [${inform.title}] ${inform.content}</font></li>
    </ul>
</div>
<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">
        <i class="fa fa-address-card hover-bg"></i>
        [${useramount}]　　　　　　
        <i class="fa fa-book hover-bg"></i>
        [${articleamount}]
    </ul>
</div>
<div class="breadcrumbs " id="breadcrumbs"><p>
    <ul class="breadcrumb">
        关于TerBlog<br>
        首页来源于 Mxnter Group<br>
        登陆主题来源于 WangEn 的开源项目 WeAdmin - [https://github.com/WangEn/WeAdmin]<br>
        后台主题来源于 mnnyang 的开源项目 html5_css_admin - [https://github.com/mnnyang/html5_css_admin]<br>
    </ul>
    </p>

</div>


<%@include file="footer.jsp" %>
</body>
</html>
