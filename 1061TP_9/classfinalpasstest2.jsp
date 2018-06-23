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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '動物學 王玉米 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>動 物 學</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>王 玉 米</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.thenewslens.com/article/65667'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '實驗學院 李顏藝 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>實 驗 學 苑</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>李 顏 藝</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/6885/2862690'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '能源創造 張深淵 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>能 源 創 造</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>張 深 淵</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.nownews.com/news/20170801/2595265'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '婚姻倫理 陳靈芝 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>婚姻倫理</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>陳 靈 芝</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://opinion.udn.com/opinion/story/8143/2795736'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '食驗法 蘇家拳 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>食 驗 法</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蘇 家 拳</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171230/1082359.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '文字的藝術說 顧巴豆 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>文 字 的 藝 術 說</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>顧 巴 豆</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171229/1082089.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '市場制度探討 蘇家拳 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>市 場 制 度 探 討</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蘇 家 拳</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171128/1061568.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '正義論 蔣借石 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>正 義 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蔣 借 石</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/6656/2858202 '>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '組織行為的探討 陳微停 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>組 織 行 為 探 討</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>陳 微 停</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/10939/2349562'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '關係論 馮迪索 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>關 係 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馮 迪 索</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://m.ltn.com.tw/news/politics/breakingnews/2212783'>連結</a></td>");
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