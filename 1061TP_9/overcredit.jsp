<%@page contentType = "text/html; charset = utf-8"
	import="java.awt.*,java.awt.event.*,javax.swing.*,java.io.*,java.*"
%>
<html>
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8">
<meta http-equiv = "Content-Language" content = "zh-tw"> 
<head>
<title>線 上 選 課 系 統</title>
</head>
<body background = "006.jpg">
<center>
<form method = "post">
<%
	out.println("<font size = 10 color = white face = '標楷體'>你 的 學 分 多 於 20 學 分 喔!! 請 重 新 選 擇 課 程</font>");
	out.println("<br>");
	out.println("<br>");
	out.println("<img src = 007.jpg width='800' height= '650'>");
	out.println("<br>");
	out.println("<br>");
	out.println("<input type = 'button' value = '回上一頁' onClick = 'history.go(-1)'>");
%>
</form>
</center>
</body>
</html>	