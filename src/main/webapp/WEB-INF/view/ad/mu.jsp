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
    <title>用户管理 - 管理系统 - TerBlog</title>
</head>
<body>
<%@include file="main.jsp" %>


<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">
        <li>用户管理</li>
    </ul>
</div>


<table class="table table-hover"
       style="padding-bottom: 100px;">
    <thead style="margin-top: 50px;background-color: white">
    <tr>
        <th>ID</th>
        <th>用户名</th>
        <th>昵称</th>
        <th>电子邮箱</th>
        <th>手机号</th>
        <th>头像</th>
        <th>性别</th>
        <th>个性签名</th>
        <th>注册时间</th>
        <th>类型</th>
        <th>操作</th>

    </tr>
    </thead>

    <tbody>
    <c:forEach items="${users}" var="c" varStatus="status">
        <tr class="active">
            <td>${c.id}</td>
            <td>${c.username}</td>
            <td>${c.nickname}</td>
            <td>${c.email}</td>
            <td>${c.phonenumber}</td>
            <td>${c.headportrait}</td>
            <td>${c.sex}</td>
            <td>${c.signature}</td>
            <td>${c.registrationdate}</td>
            <td>${c.administrator}</td>
            <td>
                <button class="btn btn-primary btn-large" data-toggle="modal" data-target="#myModal"
                        onclick="window.location.href='${pageContext.request.contextPath}/user?id=${c.id}'">
                    详情
                </button>
                <button class="btn btn-primary btn-large" data-toggle="modal" data-target="#myModal"
                        onclick="window.location.href='AlterArticle?ArticleId=${c.id}'">
                    修改
                </button>
                <button class="btn btn-danger btn-large" onclick="window.location.href='BlockUser?UserId=${c.id}'">
                    停用
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<%@include file="footer.jsp" %>
</body>
</html>
