<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/12
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<link rel="stylesheet" href="css/admin.css"/>
</head>


<header id="header">
    <i id="menu-toggle" class="fa fa-bars hover-bg">Ter Blog</i>

    <%
        String CD1, CD2, CD3, CD4;
        CD1 = "    <li class=\"dropdown user-info hover-bg\">\n" +
                "        <a href=\"";
        CD2 = "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n" +
                "        <span>";
        CD3 = "</span>\n" +
                "        </a>\n" +
                "    </li>";

        try {
            if (session.isNew()) {
                session.setAttribute("isLogin", "n");
            }else if(session.getAttribute("username").equals("")){session.setAttribute("isLogin", "n"); }

        }catch (Exception e){
            session.setAttribute("isLogin", "n");
        }



        if (session.getAttribute("isLogin").equals("y") && !session.isNew()) {

            if (session.getAttribute("administrator").equals("admin")) {

                out.print(      CD1 + "logout" + CD2 + "退出" + CD3 +
                                CD1 + "ad" + CD2 + "后台管理" + CD3 +
                                CD1 + "admin" + CD2 + "后台管理" + CD3 +
                                CD1 + "user" + CD2 + "欢迎：" + session.getAttribute("username").toString() + CD3
                );
            } else {
                out.print(
                        CD1 + "logout" + CD2 + "退出" + CD3 + CD1 + "user" + CD2 + "欢迎：" + session.getAttribute("username").toString() + CD3

                );
                // model.addAttribute("login","<a href=\"login\">登陆</a>");
            }


        } else {
            out.print(
                    CD1 + "register" + CD2 + "注册" + CD3 +
                            CD1 + "login" + CD2 + "登陆" + CD3

            );
        }




    %>


</header>