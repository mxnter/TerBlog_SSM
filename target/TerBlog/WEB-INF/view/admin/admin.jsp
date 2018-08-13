<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/12
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="no-js">
<head> <title>后台管理 -TerBlog </title></head>

<%@include file="main.jsp" %>







    <div class="row-fluid">
        <!-- block -->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">统计</div>
                <div class="pull-right"><span class="badge badge-warning">···</span>

                </div>
            </div>
            <div class="block-content collapse in">
                <div class="span3">
                    <div class="chart" data-percent="${articleamount}">${articleamount}篇</div>
                    <div class="chart-bottom-heading"><span class="label label-info">文章</span>

                    </div>
                </div>
                <div class="span3">
                    <div class="chart" data-percent="${useramount}">${useramount}位</div>
                    <div class="chart-bottom-heading"><span class="label label-info">用户</span>

                    </div>
                </div>
                <div class="span3">
                    <div class="chart" data-percent="${informamount}">${informamount}条</div>
                    <div class="chart-bottom-heading"><span class="label label-info">通知</span>

                    </div>
                </div>
                <div class="span3">
                    <div class="chart" data-percent="0">0条</div>
                    <div class="chart-bottom-heading"><span class="label label-info">评论</span>

                    </div>
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
<script src="admin/vendors/jquery-1.9.1.min.js"></script>
<script src="admin/bootstrap/js/bootstrap.min.js"></script>
<script src="admin/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
<script src="admin/assets/scripts.js"></script>
<script>
    $(function() {
        // Easy pie charts
        $('.chart').easyPieChart({animate: 1000});
    });
</script>
</body>

</html>