<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/8
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



</div>
</div>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery-2.2.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.hashchange.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script>

    function hide_sidebar() {
        var sidebar = $('#sidebar');
        if (sidebar.hasClass('sidebar-open')) {
            sidebar.removeClass('sidebar-open');
            sidebar.stop().animate({left: '-220px'}, 200);
            $('.section').stop().animate({marginLeft: "0"},200);
            $('#header').stop().animate({marginLeft: "0"},200);
            return true;
        }
        return false;
    }

    function show_sidebar() {
        var sidebar = $('#sidebar');
        if (!sidebar.hasClass('sidebar-open')) {
            sidebar.addClass('sidebar-open');
            sidebar.animate({left: '0px'},200);
            $('.section').stop().animate({marginLeft: sidebar.width()},200);
            $('#header').stop().animate({marginLeft: sidebar.width()},200);
            return true;
        }
        return false;
    }

    var is_user_close;

    function init_menu_toggle() {
        $('#menu-toggle').click(function () {
            if ($('#sidebar').hasClass('sidebar-open')) {
                hide_sidebar();
                is_user_close = true;
            } else {
                show_sidebar();
                is_user_close = false;
            }
        });
    }

    function init_mini_page() {
        $(".spec-menu-item").click(function () {
            var w = $(document).outerWidth();
            if (w < 992) {
                hide_sidebar();
            }
        });
    }

    function initSidebar() {
        var sidebar = $('#sidebar');
        var menu_item = sidebar.find('.menu-item');

        menu_item.on('click', function () {
            var $this = $(this);
            $this.next().slideToggle(250);
            $this.toggleClass('open');

            //关闭其他打开的菜单
            sidebar.find('.sub-menu').not($this.next()).slideUp().prev().removeClass('open');
        });

        sidebar.find('.open').next().show();

        init_menu_toggle();

        init_mini_page();
    }

    $(window).resize(function () {
        if (is_user_close) {
            return;
        }

        var w = $(document).outerWidth();
        if (w < 992) {
            hide_sidebar();
        } else {
            show_sidebar();
        }
    });

    $(function () {
        initSidebar();
    });

    $(function () {
        // Bind the event.
        $(window).hashchange(function () {
            if (!location.hash || location.hash == "") {
                initMainPage();
                return;
            }

            //use jquery ajax err, so..
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    $(".page").html(xhr.responseText);
                }
            };
            var action = location.hash.replace('#', "");
            console.log(action);
            xhr.open("get", action);
            xhr.send();
        });

        $(window).trigger("hashchange");
    });

</script>


<!-- 底部开始 -->
<div class="footer">
    <div class="copyright"><center>Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">M**ter</a>. All rights
        reserved. Hosted in GitHub</center></div>
</div>

</body>
</html>

