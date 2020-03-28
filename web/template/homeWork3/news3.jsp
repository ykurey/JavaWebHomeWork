<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: xiejialun
  Date: 2019/5/9
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>哈佛學歷造假？范瑋琪發長文回應了</title>
</head>
<body>
<%
    String new3 = URLEncoder.encode("哈佛學歷造假？范瑋琪發長文回應了", "UTF-8");
    Cookie cookie = new Cookie("new3", new3);
    cookie.setMaxAge(60 * 5);
    response.addCookie(cookie);
%>
<h1>哈佛學歷造假？范瑋琪發長文回應了</h1>
<img src="/images/news3.jpg" width="300" height="300">
<p>
    「范范」范瑋琪頂著哈佛才女光環出道，學歷真假頻被拿出討論，她也不厭其煩解釋，但總是會被酸民冷嘲熱諷，挖苦她學歷造假，今(9日)凌晨她再次發長文聲明，「我並未偽裝學歷」。

    范范原本就讀洛杉磯波莫納學院(Pomona College)主修稅法，大二時轉到哈佛大學延伸教育學院就讀經濟系學分班，但僅讀一學期就回台灣出唱片，未完成學業，但她從沒以哈佛學生自稱，也沒多做辯解，不過有網友挖出她過去受訪時，主持人提到是哈佛大學經濟系學生，她回應：「對，二年級。」對方更大讚她「考上哈佛多難啊」，范瑋琪也接著回應「對呀，考進去很難」，並透露弟弟也在哈佛念書。

    對此，有酸民指控她學歷造假，因為她讀的並非哈佛大學而是哈佛延伸教育學院，凌晨她鄭重發文聲明「我並未偽裝學歷」，她透露看到這些指控真的很難過，不過坦蕩蕩的她，覺得不想多說也懶得辯解，這些年來太多酸甜苦辣，她都吞下了，「真心謝謝你們一直如此關心我的學歷，我的人生、我的一切...身為公眾人物，我概括承受一切指教，只希望時間會證明一切」，她表示自己還是永保初心，堅持做最愛的音樂，努力當個對世界有用的人，「我還是我，透明的我」。
</p>
</body>
</html>