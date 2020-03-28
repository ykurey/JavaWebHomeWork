<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: xiejialun
  Date: 2019/5/9
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首頁</title>
</head>
<body>
<a href="/template/homeWork3/index.jsp"> 首頁</a> ||
<a href="news1.jsp"> 貶不停！新台幣貶3.6分收30.956元 逾6個月新低</a> ||
<a href="news2.jsp"> 美股盤前─貿易緊張持續 道瓊指數下跌近200點</a> ||
<a href="news3.jsp"> 哈佛學歷造假？范瑋琪發長文回應了</a>
<br>
<h1>閱讀網</h1>
<h2>過去5分鐘的內--你的閱讀記錄如下</h2>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(Cookie cookie:cookies){
            String s = cookie.getName();
            String value = "";
            if(s.equals("news1") || s.equals("news2") || s.equals("news3") ){
                value = URLDecoder.decode(cookie.getValue(), "UTF-8");
                out.println("<br>");
                out.println(value);
            }
        }
    }
%>
</body>
</html>