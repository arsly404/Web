<html>
<head>
<meta charset="utf-8">
<head>
<title>線 上 選 課 系 統</title>
</head>
<body background="006.jpg">
<form method="post">
<%
	String ID_O[]=(String[])session.getValue("ID_session");
	out.println("<font size = 6 face = 標楷體 color = white><center>" + ID_O[0] + " 議 員，你 好!" + "</font>");
	out.println("<br>");
	out.println("<font size = 6 face = 標楷體 color = white><center>" + "歡 迎 你 進 入 四 院 大 學 選 課 系 統"+"</font>");
	out.println("<hr>");
%>
<font size = "6" face = "標楷體" color="white">科 系 跑 馬 燈 選 單</font>
<br>
<font size = "5" face = "標楷體" color = "limegreen"><marquee  direction="right" height="35" scrollamount="8" behavior="alternate">把 課 程 選 好 選 滿 ~ 學 分 就 多 多 喔!!</marquee></font>
<br>
<hr>

<marquee  direction="right" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">1.</font><a href = "classfinalpass1.jsp"><font size = "5" face = "標楷體" color="deepskyblue">行 政 系</font></a></marquee>
<br>
<br>
<marquee  direction="left" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">2.</font><a href = "classfinalpass2.jsp"><font size = "5" face = "標楷體" color="deepskyblue">立 法 系</font></a></marquee>
<br>
<br>
<marquee  direction="right" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">3.</font><a href = "classfinalpass3.jsp"><font size = "5" face = "標楷體" color="deepskyblue">司 法 系</font></a></marquee>
<br>
<br>
<marquee  direction="left" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">4.</font><a href = "classfinalpass4.jsp"><font size = "5" face = "標楷體" color="deepskyblue">監 察 系</font></a></marquee>
<br>
<br>
<marquee  direction="right" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">5.</font><a href = "classfinalpass5.jsp"><font size = "5" face = "標楷體" color="deepskyblue">交 通 系</font></a></marquee>
<br>
<br>
<marquee  direction="left" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">6.</font><a href = "classfinalpass6.jsp"><font size = "5" face = "標楷體" color="deepskyblue">國 防 系</font></a></marquee>
<br>
<br>
<marquee  direction="right" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">7.</font><a href = "classfinalpass7.jsp"><font size = "5" face = "標楷體" color="deepskyblue">外 交 系</font></a></marquee>
<br>
<br>
<marquee  direction="left" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">8.</font><a href = "classfinalpass8.jsp"><font size = "5" face = "標楷體" color="deepskyblue">教 育 系</font></a></marquee>
<br>
<br>
<marquee  direction="right" height="35" scrollamount="15" behavior="alternate" onMouseOver="this.stop()" onMouseOut="this.start()"><font size = "5" face = "標楷體" color="deepskyblue">9.</font><a href = "classfinalpass9.jsp"><font size = "5" face = "標楷體" color="deepskyblue">勞 動 系</font></a></marquee>
</body>
</html>