<%@page contentType = "text/html; charset = utf-8"
	import="java.awt.*,java.awt.event.*,javax.swing.*,java.io.*,java.*,javax.servlet.http.HttpServletRequest,java.util.*"
%>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8">
<meta http-equiv = "Content-Language" content = "zh-tw"> 
<head>
<title>線 上 選 課 系 統</title>
</head>
<body background="006.jpg">
<script language="JavaScript1.1">
function checkForm()
{
			s = 0;   //性別單選鈕防呆
			for(i = 0;i<this.a1.check.length;i++)
			{
				if(this.a1.check[i].checked)
				{
					s=1;
				}
			}
			if(s==0)
			{
				alert("請選擇課程");
				return false;
			}
}
</script>
<center>
<form method="post" action = "datafinal.jsp" name = "a1" onsubmit = "return checkForm()">
<hr>
<br>
<%
		request.setCharacterEncoding("utf-8");
		int x = Integer.parseInt(request.getParameter("number"));
		int z = (int)session.getValue("randok");
		if(x == z)
		{
			out.println("<font size = 5 color = white face = '標楷體'>" + "恭 喜 你 猜 對 囉!!</font>");
			out.println("<br>");
			out.println("<br>");
			out.println("<font size = 5 color = white face = '標楷體'>" + "以 下 是 該 科 系 開 放 課 程</font>");
			out.println("<table border = 1 width = 1200 height = 80 bordercolor = white>");
			
			out.println("<tr>");
			out.println("<td width = '5%' bgcolor = #00ffff><center>課 程 編 號</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>課 程 名 稱</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>指 導 老 師</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>學 分 數</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center>相 關 資 訊</td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '台灣地理考察 齊BO零 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>台 灣 地 理 考 察</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>齊 BO 零</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.nownews.com/news/20170718/2589929'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '論文實作 郭暗良 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>論 文 實 作</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>郭 暗 良</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/7266/2701901'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '堅守自盜 李登輝 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>堅 守 自 盜</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>李 登 輝</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/society/breakingnews/2282240 '>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '政商勾結 林益世 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>政 商 勾 結</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>林 益 世</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2298220'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '精神管理 施振榮 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>精 神 管 理</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>施 振 榮</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2291145 '>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '彈劾說 張君雅 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>彈 劾 說</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>張 君 雅</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2293927'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '移工監察 習大大 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>移 工 監 察</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>習 大 大</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2277049'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '布蘭德客運  布蘭德3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>布 蘭 德 客 運</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>布 蘭 德</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2033393 '>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '不當黨產條例 姑婆勇 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>不 當 黨 產 條 例</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>姑 婆 勇</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2019898 '>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '煎茶苑 許堅志 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>煎 茶 苑</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>許堅志</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2127937'>連結</a></td>");
			out.println("</tr>");
			
			out.println("</table>");
			out.println("<br>");
			out.println("<br>");
			
			out.println("<input type = 'button' value = '回上一頁' onClick = 'history.go(-1)'>");
			out.println("<input type = 'button' value = '回科系選單' onClick = 'history.go(-2)'>");
			out.println("<input type = 'submit' value = '送出'");
		}
		else
		{
			out.println("<font size = 6 color = white face = '標楷體'>" + "請 再 猜 一 次，不 然 課 程 要 被 選 完 囉!!</font>");
			out.println("<br>");
			out.println("<br>");
			out.println("<img src = fuck.gif width='600' height='550'>");
			out.println("<br>");
			out.println("<br>");
			out.println("<input type = 'button' value = '回上一頁' onClick = 'history.go(-1)'>");
		}
%>
</center>
</form>
</body>
</html>