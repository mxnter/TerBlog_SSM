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
    <title>文章管理 - 管理系统 - TerBlog</title>
</head>
<body>
<%@include file="main.jsp"%>



<div class="breadcrumbs " id="breadcrumbs">
    <ul class="breadcrumb">
        <li>回收站</li>
    </ul>
</div>


<table class="table table-hover"
       style="padding-bottom: 100px;">
    <thead style="margin-top: 50px;background-color: white">
    <tr>
        <th>ID</th>
        <th>文章标题</th>
        <th>文章内容</th>
        <th>文章日期</th>
        <th>文章时间</th>
        <th>备注</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody>
<c:forEach items="${articles}" var="c" varStatus="status">
    <tr class="danger">
        <td>${c.id}</td>
        <td>${c.title}</td>
        <td>${c.content}</td>
        <td>${c.data}</td>
        <td>${c.time}</td>
        <td>${c.bz}</td>
        <td>
            <button class="btn btn-primary btn-large" data-toggle="modal" data-target="#myModal" onclick="window.location.href='NoRecycledArticles?ArticlesId=${c.id}'">
                移出
            </button>
            <button class="btn btn-primary btn-large" data-toggle="modal" data-target="#myModal" onclick="window.location.href='${pageContext.request.contextPath}/article?id=${c.id}'" >
                预览
            </button>
            <button class="btn btn-primary btn-large" data-toggle="modal" data-target="#myModal" onclick="window.location.href='AlterArticle?ArticleId=${c.id}'" >
                修改
            </button>
            <button class="btn btn-danger btn-large" onclick="window.location.href='DeleteArticle?ArticleId=${c.id}'">
                删除
            </button>
        </td>
    </tr>
</c:forEach>
    </tbody>
</table>





<%@include file="footer.jsp"%>
</body>
</html>
