<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: xiejialun
  Date: 2019/5/9
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美股盤前─貿易緊張持續 道瓊指數下跌近200點</title>
</head>
<body>
<%
    String new2 = URLEncoder.encode("美股盤前─貿易緊張持續 道瓊指數下跌近200點", "UTF-8");
    Cookie cookie = new Cookie("new2", new2);
    cookie.setMaxAge(60 * 5);
    response.addCookie(cookie);
%>
<h1>美股盤前─貿易緊張持續 道瓊指數下跌近200點</h1>
<img src="/images/news2.jpg" width="300" height="300">
<p>
    由於美國與中國在貿易立場上，各有堅持，全球股市週四下跌。

    在亞洲，香港恆生指數大跌 2.4%，日經指數收低約 1%。上海綜合指數下跌 1.5%，本週跌幅達 7%。

    在歐洲，法國股市於早場交易中，下跌 1.3%，跌幅最大。

    週四盤前交易中，美國指數期貨亦走低。道瓊下跌 0.7%，近 200 點。Nasdaq 下跌 0.8%，S&P 500 走低 0.6%。

    投資人將密切注意中美兩國的貿易談判。中國最高貿易官員劉鶴於週四抵達華盛頓，準備進行二天的協商。

    近來的演變顯示，談判可能充滿爭議。川普總統週三說，他將於週五針對 2000 億美元的中國商品提高關稅，因為中國違反協定。

    北京則說，若美國調高關稅，中國將進行報復。
</p>

</body>
</html>