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
<html>
<head>
    <title>用户数据</title>
</head>
<body>
<center>
    <h2>用户数据</h2>

    <br>
    ${login}
    <br>
    <br>
    <br>
</center>
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>username</td>
        <td>password</td>
        <td>nickname</td>
        <td>headportrait</td>
        <td>registrationdate</td>
        <td>administrator</td>
        <td>sex</td>
        <td>email</td>
        <td>phonenumber</td>
        <td>signature</td>




    </tr>
    <c:forEach items="${users}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.username}</td>
            <td>${c.password}</td>
            <td>${c.nickname}</td>
            <td>${c.headportrait}</td>
            <td>${c.registrationdate}</td>
            <td>${c.administrator}</td>
            <td>${c.sex}</td>
            <td>${c.email}</td>
            <td>${c.phonenumber}</td>
            <td>${c.signature}</td>



        </tr>
    </c:forEach>
</table>
</body>
</html>
