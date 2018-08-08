<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>TerBlog</title>
</head>
<body>
<center>
    <h2>Ter Blog</h2>

    <br>
    ${login}
    <br>
    <br>
    <br>
</center>
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>title</td>
        <td>content</td>
        <td>data</td>
        <td>time</td>
        <td>bz</td>


    </tr>
    <c:forEach items="${indexs}" var="c" varStatus="st">
        <tr>
            <td><a href="article?id=${c.id}">${c.id}</a></td>
            <td>${c.title}</td>
            <td>${c.content}</td>
            <td>${c.data}</td>
            <td>${c.time}</td>
            <td>${c.bz}</td>

        </tr>
    </c:forEach>
</table>

</body>
</html>
