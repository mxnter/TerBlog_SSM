<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/12
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%
    String username = (String) session.getAttribute("username");

%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <title>后台管理 -TerBlog </title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/admin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/admin/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/admin/assets/styles.css" rel="stylesheet" media="screen">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon"/>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="${pageContext.request.contextPath}/admin/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">TerBlog</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i><%=username%><i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/user/me">个人资料</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/cp">修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/logout">退出</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}">首页</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">关于 <b class="caret"></b>

                        </a>
                        <ul class="dropdown-menu" id="menu1">
                            <li>
                                <a href="https://mter.xyz/">Mxnter</a>
                            </li>
                            <li>
                                <a href="https://github.com/mxnter">GitHub</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="https://github.com/mxnter/TerBlog">TerBlog GitHub</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/ad">旧版管理-半成品</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">文章 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/NewArticle">新建</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="{pageContext.request.contextPath}/admin/Draft">草稿</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/Article">列表</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">评论</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/Recycled">回收站</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">用户 <i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/User">用户列表</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/ForbiddenUser">禁用用户</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/NewUser">新建用户</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">通知 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/NewInform">新建</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="${pageContext.request.contextPath}/admin/Inform">列表</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li class="active">
                    <a href="${pageContext.request.contextPath}/admin"><i class="icon-chevron-right"></i> 仪表盘</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/Article"><i class="icon-chevron-right"></i> 文章</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/NewArticle"><i class="icon-chevron-right"></i> 　新建</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/Draft"><i class="icon-chevron-right"></i> 　草稿</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/Recycled"><i class="icon-chevron-right"></i> 　回收站</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/User"><i class="icon-chevron-right"></i> 用户</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/NewUser"><i class="icon-chevron-right"></i> 　新建</a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin/ForbiddenUser"><i class="icon-chevron-right"></i> 　禁用</a>
                </li>
                <li>
                    <a tabindex="-1" href="${pageContext.request.contextPath}/admin/Inform"><i class="icon-chevron-right"></i> 通知</a>
                </li>
                <li>
                    <a tabindex="-1" href="${pageContext.request.contextPath}/admin/NewInform"><i class="icon-chevron-right"></i> 　新建</a>
                </li>




            </ul>
        </div>
        <!--/span-->
        <div class="span10" id="content">


            <c:if test="${inform.title != null}">
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <h4>${inform.title} </h4>
                        ${inform.content}</div>
                </c:if>


