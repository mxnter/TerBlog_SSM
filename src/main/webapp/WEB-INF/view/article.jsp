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
</head>
<body>


<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>title</td>
        <td>content</td>
        <td>data</td>
        <td>time</td>
        <td>bz</td>


    </tr>
    <c:forEach items="${articles}" var="c" varStatus="st">
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
