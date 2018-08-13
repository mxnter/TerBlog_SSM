<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/12
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="no-js">
<head> <title>用户管理 - 后台管理 -TerBlog </title></head>


<%@include file="main.jsp" %>


    <div class="row-fluid">
        <!-- block -->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">全部用户</div>
            </div>
            <div class="block-content collapse in">
                <div class="span12">
                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                        <thead>
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
                                    <button class="btn btn-mini" onclick="window.location.href='${pageContext.request.contextPath}/user?id=${c.id}'">
                                        详情
                                    </button>
                                    <button class="btn btn-primary btn-mini" onclick="window.location.href='AlterUser?UserId=${c.id}'">
                                        修改
                                    </button>
                                    <button class="btn btn-danger btn-mini" onclick="window.location.href='BlockUser?UserId=${c.id}'">
                                        停用
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /block -->
    </div>
</div>
</div>
<hr>
<footer>
    <p>Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">M**ter</a>. All rights
        reserved. Hosted in GitHub</p>
</footer>
</div>
<!--/.fluid-container-->

<script src="${pageContext.request.contextPath}/admin/vendors/jquery-1.9.1.js"></script>
<script src="${pageContext.request.contextPath}/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/vendors/datatables/js/jquery.dataTables.min.js"></script>


<script src="${pageContext.request.contextPath}/admin/assets/scripts.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/DT_bootstrap.js"></script>
<script>
    $(function() {

    });
</script>
</body>

</html>