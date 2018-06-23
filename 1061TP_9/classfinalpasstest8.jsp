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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '大學亂象 李員外 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>大 學 亂 象</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>李 員 外</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/7339/2421294'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '偏鄉教育 蘇慧巧 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>偏 鄉 教 育</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蘇 慧 巧</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20170818/992111.htm'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '空氣淨化論 詹飽豬 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>空 氣 淨 化 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>詹 飽 豬</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/7266/2913104'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '你要志工嗎?  陳灌鳴、張香云 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>你 要 志 工 嗎 ?</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>陳 灌 鳴 、 張 香 云</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://newtalk.tw/news/view/2018-01-04/109304'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '東部觀光去 劉小真 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>東 部 觀 光 去</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>劉 小 真</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.cna.com.tw/news/firstnews/201712280004-1.aspx'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '開上國一南下去 陳上帽 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>開 上 國 一 南 下 去</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>陳 上 帽</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://talk.ltn.com.tw/article/breakingnews/2278202'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '有錢賺跟沒錢賺的差別 羅慶技 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>有 錢 賺 跟 沒 錢 賺 的 差 別</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>羅 慶 技</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/7266/2866567'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '八+九等於17 王德州 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>八 + 九 等 於 17</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>王 德 州</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.cw.com.tw/article/article.action?id=5074438'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '技職無苦難奈 林梅豬 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>技 職 無 苦 難 奈</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>林 梅 豬</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://opinion.udn.com/opinion/story/9899/2907257'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '黑函掛號喔 劉速廟 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>黑 函 掛 號 喔!</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>劉 速 廟</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.nownews.com/news/20180103/2674178'>連結</a></td>");
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