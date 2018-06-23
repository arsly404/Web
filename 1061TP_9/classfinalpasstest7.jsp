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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '護照辨識 杜勒斯 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>護 照 辨 識</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>杜 勒 斯</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://tw.news.yahoo.com/%E8%AA%A4%E6%A4%8D%E8%AD%B7%E7%85%A7-%E5%8A%A0%E8%B2%BC%E9%98%B2%E5%81%BD%E8%B2%BC%E7%B4%99-%E4%B8%8D%E9%8A%B7%E6%AF%80%E9%87%8D%E5%8D%B0-%E5%A4%96%E4%BA%A4%E9%83%A8%E7%9C%81%E4%B8%8B2%E5%84%84%E5%85%83-215007101.html'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '友邦向「錢」看 安太歲 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>友 邦 向 「錢」 看</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>安 太 歲</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.epochtimes.com/b5/18/1/2/n10016790.htm'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '人身安全 塑鋼祥 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>人 身 安 全</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>塑 鋼 祥</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/1843694'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '空白的八年 馬針灸 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>空 白 的 八 年</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馬 針 灸</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/paper/1054905'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '詐騙偵訊 希臘戰士 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>詐 騙 偵 訊</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>希 臘 戰 士</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.chinatimes.com/realtimenews/20160723003950-260401'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '南海維護 蔡硬聞 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>南 海 維 護</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蔡 硬 聞</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://newtalk.tw/news/view/2017-08-07/94420'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '漁權爭論 天才小釣手 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>漁 權 爭 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>天 才 小 釣 手</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://newtalk.tw/news/view/2017-12-20/107668'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '賣油抓包 李現髒 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賣 油 抓 包</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>李 現 髒</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.nownews.com/news/20180104/2674703'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '神隱的國旗 黃籽哲 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>神 隱 的 國 旗</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>黃 籽 哲</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/6656/2767296'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '徽章黨章分不清楚 蔡是硬 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>徽 章 黨 章 分 不 清 楚</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蔡 是 硬</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2265139'>連結</a></td>");
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