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




    <div class="navbar">
    <div class="navbar-inner">
        <ul class="breadcrumb">
            <i class="icon-chevron-left hide-sidebar"><a href='#' title="Hide Sidebar" rel='tooltip'>&nbsp;</a></i>
            <i class="icon-chevron-right show-sidebar" style="display:none;"><a href='#' title="Show Sidebar" rel='tooltip'>&nbsp;</a></i>
            <li>
                <a href="#">首页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">设置</a> <span class="divider">/</span>
            </li>
            <li class="active">工具</li>
        </ul>
    </div>
</div>
    <div class="row-fluid">
        <!-- block -->
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">统计</div>
                <div class="pull-right"><span class="badge badge-warning">查看更多</span>

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
                    <div class="chart" data-percent="0">0%</div>
                    <div class="chart-bottom-heading"><span class="label label-info">待设置</span>

                    </div>
                </div>
                <div class="span3">
                    <div class="chart" data-percent="0">0%</div>
                    <div class="chart-bottom-heading"><span class="label label-info">待设置</span>

                    </div>
                </div>
            </div>
        </div>
        <!-- /block -->
    </div>

</div>
</div>
<hr>
<%@include file="footer.jsp" %>
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