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
	request.setCharacterEncoding("utf-8");
	String [] class1 = request.getParameterValues("check");
	int i = 0;
	int k = 0;
	out.println("<font size = 6 color = white face = '標楷體'>" + "以 下 是 已 選 擇 的 課 程</font>");
	out.println("<br>");
	out.println("<br>");
	out.println("<table border = 1 width = 1500 height = 100 bordercolor = white>");
	out.println("<tr>");
	for(i = 0; i<class1.length;i++)
	{
		
		out.println("<td width = '15%'>");
		out.println("<center>");
		out.println("<font size = 5 color =white face = '標楷體'>" + class1[i] + "</font>");
		out.println("</td>");
		k = k+3;
	}
	if(k < 10)
	{
		response.sendRedirect("lowcredit.jsp");
	}
	if(k > 20)
	{
		response.sendRedirect("overcredit.jsp");
	}
	out.println("</tr>");
	
	out.println("<tr>");
	out.println("<td colspan = 100>");
	out.println("<center>");
	out.println("<font size = 5 color = white face = '標楷體'>" + "總合學分" + "</font>" + "<font size = 5 color = white face ='標楷體'>" + k + "</font>");
	out.println("</td>");
	out.println("</tr>");
	
	out.println("</table");
	out.println("<br>");
	out.println("<br>");
	out.println("<marquee  direction='right' height='35' scrollamount='15' behavior='alternate'><font size = 6 color = white face = '標楷體'>" + "以 下 是 對 你 的 祝 褔" +"</font></marquee>");
	out.println("<br>");
	out.println("<br>");
	out.println("<img src = 011.jpg width = '950' height = '600'>");
	out.println("<br>");
	out.println("<br>");
	out.println("<input type = 'button' value = '回科系選單' onClick = 'history.go(-3)'>");
	out.println("<input type = 'button' value = '回上一頁' onClick = 'history.go(-1)'>");
%>
</form>
</center>
</body>
</html>	