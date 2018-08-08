<%@ page import="com.terblog.model.Index" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: mrealk
  Date: 2018/8/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>TerBlog</title>
    <link rel="stylesheet" href="css/MX.css"/>
    <meta name=”viewport” content=”width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,
          user-scalable=no”/>
</head>
<body>
<center>
    <h2>Ter Blog</h2>
    <br>
    ${login}
    <br><br>


</center>
<%
    List<Index>indexs=(List<Index>)request.getAttribute("indexs");
    out.print("  <!--top块 -->\n" +
            "\n" +
            "  <div  class=\"top\" >\n" +
            "    <div class=\"top_z\"  >\n" +
            "      <div class=\"top_a\">\n" +
            "         <h1>" + indexs.get(indexs.size()-1).getTitle() + "</h1>" +
            "          <p>\n" + indexs.get(indexs.size()-1).getData() +"  "+ indexs.get(indexs.size()-1).getTime() + "</p>\n" +
            "          <p>\n" + indexs.get(indexs.size()-1).getContent() + "</p>\n" +
            "          <p>" + indexs.get(indexs.size()-1).getBz() +
            "           <a href=\"article?id=" + indexs.get(indexs.size()-1).getId() + "\">更多内容》</a>"+
                    "        </p>\n" +
            "      </div>\n" +
            "    </div>\n" +
            "    <div class=\"top_img\" >\n" +
            "      <img src=\"img/1.jpg\" alt=\"图片\"/>\n" +
            "    </div>\n" +
            "  </div>"
    );

    for(int i=indexs.size()-2;i>=0;i--){

        if((indexs.size()-2-i)%2==0) {
            out.print("  <!--第一块 -->\n" +
                    "  <div  class=\"left\" >\n" +
                    "    <div class=\"left_img\" >\n" +
                    "      <img src=\"img/2.jpg\" alt=\"图片\"/>\n" +
                    "    </div>\n" +
                    "    <div class=\"left_z\"  >\n" +
                    "      <div class=\"left_a\">\n" +
                    "        <h1>" + indexs.get(i).getTitle() + "</h1>\n" +
                    "        <p>" + indexs.get(i).getData() +"  "+ indexs.get(i).getTime() + "</p>\n" +
                    "        <p>" + indexs.get(i).getContent() + "</p>\n" +
                    "        <p>" + indexs.get(i).getBz() +
                    "           <a href=\"article?id=" + indexs.get(i).getId() + "\">更多内容》</a>" +
                    "        </p>\n" +
                    "      </div>\n" +
                    "    </div>\n" +
                    "  </div>"
            );
        } else {
            out.print("  <div  class=\"ringh\" >\n" +
                    "    <div class=\"ringh_z\"  >\n" +
                    "      <div class=\"ringh_a\">\n" +
                    "        <h1>" + indexs.get(i).getTitle() + "</h1>\n" +
                    "        <p>" + indexs.get(i).getData() +"  "+ indexs.get(i).getTime() + "</p>\n" +
                    "        <p>" + indexs.get(i).getContent() + "</p>\n" +
                    "        <p>" + indexs.get(i).getBz() +
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
                            <td>${c.content}</td>
                            <td>${c.data}</td>
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
