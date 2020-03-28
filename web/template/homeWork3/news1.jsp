<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: xiejialun
  Date: 2019/5/9
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>貶不停！新台幣貶3.6分收30.956元 逾6個月新低</title>
</head>
<body>
<%
    String new1 = URLEncoder.encode("貶不停！新台幣貶3.6分收30.956元 逾6個月新低", "UTF-8");
    Cookie cookie = new Cookie("new1", new1);
    cookie.setMaxAge(60 * 5);
    response.addCookie(cookie);
%>
<h1>貶不停！新台幣貶3.6分收30.956元 逾6個月新低</h1>
<img src="/images/news1.jpg" width="300" height="300">
<p>
    美中貿易戰一觸即發，在人民幣領跌下，新台幣午後貶勢擴大，最終收在30.956元兌1美元，創下去年10月底以來新低，台北外匯經紀公司成交量為10.74億美元。

    「所有外資都在買」，外匯交易員說，很少看到外資全部同一方向買美元，在外資匯出加劇下，雖然出口商也還在賣（美元），仍擋不住新台幣貶勢。

    外匯交易員指出，新台幣今日貶破30.95元後，接下來就是往31元方向貶，尤其人民幣如果真如外銀預測，一路貶破7、甚至貶破8，新台幣貶破31元價位應該也守不住，只是是否會一次貶到底？還是緩貶，變數仍多，後市就看國際情勢如何演變。
</p>
</body>
</html>