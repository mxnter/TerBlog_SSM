<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/8
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="cn">

<head>
    <title>TerBlog 注册</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=""
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        function phonenum() {
            var phonenum = document.getElementById("phonenumber").value;
            var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
            if (!myreg.test(phonenum)) {
                document.getElementById("ts").innerHTML="请输入正确的手机号码！";
            } else {
                document.getElementById("ts").innerHTML="";
            }


        }

    </script>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon"/>
    <!-- Meta tag Keywords -->
    <!-- Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/register/css/style.css" type="text/css" media="all" />
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //web-fonts -->
</head>

<body>
<!--header-->
<br>
<!--//header-->
<!-- content -->
<div class="main-content-agile">
    <div class="sub-main-w3">
        <form action="in" method="post" enctype="multipart/form-data" >
            <h2>TerBlog 注册 [内部测试]</h2>
            <div class="form-style-agile">
                <input placeholder="用户名" name="username" type="text" required="required">
            </div>
            <div class="form-style-agile">
                <input placeholder="密码" name="password" type="text" required="required">
            </div>
            <div class="form-style-agile">
                <input placeholder="昵称" name="nickname" type="text" required="required">
            </div>
            <div class="form-style-agile">
                <input placeholder="电子邮件" name="email" type="email" required="required">
            </div>
            <div class="form-style-agile">
                <center><font color="red"><p id="ts"></p></font></center>
                <input placeholder="电话号码" name="phonenumber" id="phonenumber" type="text" required="required" onblur="phonenum()" >
            </div>
            <div class="form-style-agile">
                <input placeholder="邀请码" name="c" type="text" required="required">
            </div>
            <div class="form-style-agile" >
                <select class="category" required="required" name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>
            <div class="form-style-agile">
                <textarea  placeholder="个性签名" required="" id="signature" name="signature"></textarea>
            </div>
            <input type="submit" value="注册">
        </form>

    </div>
</div>
<!-- //content -->
<!-- footer -->
<div class="footer">
    <p>Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">M**ter</a>. All rights
        reserved. Hosted in GitHub</p>
</div>
<!-- //footer -->


<!-- js -->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>

<!-- date-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/register/css/jquery-ui.css" />
<script src="${pageContext.request.contextPath}/register/js/jquery-ui.js"></script>
<script>
    $(function () {
        $("#datepicker,#datepicker1").datepicker();
    });
</script>
<!-- //date -->

<!-- time -->
<script src="${pageContext.request.contextPath}/register/js/wickedpicker.js"></script>
<script>
    $('.timepicker').wickedpicker({
        twentyFour: false
    });
</script>
<link href="${pageContext.request.contextPath}/register/css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
<!-- //time -->


</body>

</html>
