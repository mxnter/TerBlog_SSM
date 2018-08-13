<%@ page import="com.terblog.model.Index" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>TerBlog</title>
    <link rel="stylesheet" href="css/MX.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <meta name=”viewport” content=”width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,
          user-scalable=no”/>
</head>
<body>
<%@include file="menu.jsp" %>

<center>
    <h2>Ter Blog</h2>
    <br>
    <br>
</center>


<%
    List<Index> indexs = (List<Index>) request.getAttribute("indexs");
    String content = indexs.get(indexs.size() - 1).getContent();
    if (content.length() > 20) content = content.substring(0, 30);
    out.print("  <!--top块 -->\n" +
            "\n" +
            "  <div  class=\"top\" >\n" +
            "    <div class=\"top_z\"  >\n" +
            "      <div class=\"top_a\">\n" +
            "         <h1>" + indexs.get(indexs.size() - 1).getTitle() + "</h1>" +
            "          <p>\n" + indexs.get(indexs.size() - 1).getDate() + "  " + indexs.get(indexs.size() - 1).getTime() + "</p>\n" + "<br><br>" +
            "          <p>　　" + content +
            "           <a href=\"article?id=" + indexs.get(indexs.size() - 1).getId() + "\">更多内容》</a>" +
            "        </p>\n" +
            "      </div>\n" +
            "    </div>\n" +
            "    <div class=\"top_img\" >\n" +
            "      <img src=\"img/1.jpg\" alt=\"图片\"/>\n" +
            "    </div>\n" +
            "  </div>"
    );

    for (int i = indexs.size() - 2; i >= 0; i--) {

        if ((indexs.size() - 2 - i) % 2 == 0) {
            String contentleft = indexs.get(i).getContent();
            if (contentleft.length() > 20) contentleft = contentleft.substring(0, 20);
            out.print("  <!--第一块 -->\n" +
                    "  <div  class=\"left\" >\n" +
                    "    <div class=\"left_img\" >\n" +
                    "      <img src=\"img/2.jpg\" alt=\"图片\"/>\n" +
                    "    </div>\n" +
                    "    <div class=\"left_z\"  >\n" +
                    "      <div class=\"left_a\">\n" +
                    "        <h1>" + indexs.get(i).getTitle() + "</h1>\n" +
                    "        <p>" + indexs.get(i).getDate() + "  " + indexs.get(i).getTime() + "</p>\n" + "<br><br>" +
                    "        <p>　　" + contentleft +
                    "           <a href=\"article?id=" + indexs.get(i).getId() + "\">更多内容》</a>" +
                    "        </p>\n" +
                    "      </div>\n" +
                    "    </div>\n" +
                    "  </div>"
            );
        } else {
            String contentringh = indexs.get(i).getContent();
            if (contentringh.length() > 20) contentringh = contentringh.substring(0, 20);
            out.print("  <div  class=\"ringh\" >\n" +
                    "    <div class=\"ringh_z\"  >\n" +
                    "      <div class=\"ringh_a\">\n" +
                    "        <h1>" + indexs.get(i).getTitle() + "</h1>\n" +
                    "        <p>" + indexs.get(i).getDate() + "  " + indexs.get(i).getTime() + "</p>\n" + "<br><br>" +
                    "        <p>　　" + contentringh +
                    "        <a href=\"article?id=" + indexs.get(i).getId() + "\">更多内容》</a>" +
                    "        </p>\n" +
                    "      </div>\n" +
                    "    </div>\n" +
                    "    <div class=\"ringh_img\" >\n" +
                    "      <img src=\"img/3.jpg\" alt=\"图片\"/>\n" +
                    "    </div>\n" +
                    "  </div>"
            );

        }
    }


%>


<div class="bottom">
    <div class="bottom_z">
        <div class="bottom_a">
            <h1>M**ter 个人介绍</h1>
            <p>妈耶，我也不知道该写点什么！</p>
            <table align='center' border='1' cellspacing='0'>
                <tr>
                    <td>id</td>
                    <td>title</td>
                    <td>content</td>
                    <td>data</td>
                    <td>time</td>
                    <td>bz</td>


                </tr>
                <c:forEach items="${indexs}" var="c" varStatus="st">
                    <tr>
                        <td><a href="article?id=${c.id}">${c.id}</a></td>
                        <td>${c.title}</td>
                        <c:choose>
                            <c:when test="${fn:length(c.content) >= 20}">
                                <td title="${c.content}">${fn:substring(c.content,0,20)}……</td>
                            </c:when>
                            <c:otherwise>
                                <td>${c.content}</td>
                            </c:otherwise>
                        </c:choose>
                        <td>${c.date}</td>
                        <td>${c.time}</td>
                        <td>${c.bz}</td>

                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<div class="tail">

    <p>Copyright © 2018 <a href="https://Mxnter.github.io/" target="_blank" title="nter">M**ter</a>. All rights
        reserved. Hosted in GitHub</p>

</div>
</body>
</html>
