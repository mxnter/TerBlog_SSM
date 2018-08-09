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
<%@include file="main.jsp"%>
<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">

        <li><font color="red"> [${inform.title}]  ${inform.content}</font> </li>
    </ul>
</div>
<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">
        用户总数
        [${useramount}]　　　　　　
        文章总数
        [${articleamount}]
    </ul>
</div>
<div class="breadcrumbs " id="breadcrumbs"><p>
    关于TerBlog<br>
    首页来源于 Mxnter Group<br>
    登陆来源于 WangEn 的开源项目 <a href="https://github.com/WangEn/WeAdmin">WeAdmin</a><br>
    后台来源于 mnnyang 的开源项目 <a href="https://github.com/mnnyang/html5_css_admin">html5_css_admin</a><br>
</p>

</div>






<%@include file="footer.jsp"%>
</body>
</html>
