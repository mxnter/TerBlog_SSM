<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/12
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js">
<head> <title>新建 - 后台管理 -TerBlog </title></head>


<%@include file="main.jsp" %>




<div class="row-fluid">
    <!-- block -->
    <div class="block">
        <div class="navbar navbar-inner block-header">
            <div class="muted pull-left">新建通知</div>
        </div>
        <div class="block-content collapse in">
            <div class="span12">
                <form class="form-horizontal" action="InNewInform" enctype="multipart/form-data" method="post">
                    <fieldset>
                        <legend>新建通知</legend>
                        <div class="control-group">
                            <label class="control-label" for="title">标题</label>
                            <div class="controls">
                                <input class="input-xlarge focused" id="title" name="title" type="text" value="">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="content">内容</label>
                            <div class="controls">
                                <input class="input-xlarge focused" id="content" name="content" type="text" value="">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="type">状态</label>
                            <div class="controls">
                                <select id="type" name="type">
                                    <option value="1">生效</option>
                                    <option value="0">失效</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">保存</button>
                            <button type="reset" class="btn">取消</button>
                        </div>
                    </fieldset>
                </form>

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
<link href="${pageContext.request.contextPath}/admin/vendors/datepicker.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/admin/vendors/uniform.default.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/admin/vendors/chosen.min.css" rel="stylesheet" media="screen">

<link href="${pageContext.request.contextPath}/admin/vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

<script src="${pageContext.request.contextPath}/admin/vendors/jquery-1.9.1.js"></script>
<script src="${pageContext.request.contextPath}/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/vendors/jquery.uniform.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/vendors/chosen.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/vendors/bootstrap-datepicker.js"></script>

<script src="${pageContext.request.contextPath}/admin/vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
<script src="${pageContext.request.contextPath}/admin/vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

<script src="${pageContext.request.contextPath}/admin/vendors/wizard/jquery.bootstrap.wizard.min.js"></script>


<script src="${pageContext.request.contextPath}/admin/assets/scripts.js"></script>
<script>
    $(function() {
        $(".datepicker").datepicker();
        $(".uniform_on").uniform();
        $(".chzn-select").chosen();
        $('.textarea').wysihtml5();

        $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#rootwizard').find('.bar').css({width:$percent+'%'});
                // If it's the last tab then hide the last button and show the finish instead
                if($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            }});
        $('#rootwizard .finish').click(function() {
            alert('Finished!, Starting over!');
            $('#rootwizard').find("a[href*='tab1']").trigger('click');
        });
    });
</script>
</body>

</html>
