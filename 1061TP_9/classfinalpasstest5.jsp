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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '酒精分析 鄭保親 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>酒 精 分 析</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>鄭 保 親</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/focus/paper/1156565'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '基礎建設 葉框十 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>基 礎 建 設</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>Ya 框 十</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://video.udn.com/news/688620'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '機場交通建設 若藍丸 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>機 場 交 通 建 設</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>若 藍 丸</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://kato3c.pixnet.net/blog/post/445621691-%E4%BB%8A%E6%97%A5%E6%99%82%E4%BA%8B-%E6%A9%9F%E5%A0%B4%E6%8D%B7%E9%81%8B%E7%82%BA%E4%BB%80%E9%BA%BC%E9%80%9A%E4%B8%8D%E4%BA%86%EF%BC%9F%E4%BA%A4%E9%80%9A%E9%83%A8%E5%88%97'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '發車檢測 老司機 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>發 車 檢 測</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>老 司 機</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.msn.com/zh-tw/news/other/%E5%B8%B6%E5%9C%98%E9%82%84%E5%BE%97%E8%B2%A0%E8%B2%AC%E5%8F%B8%E6%A9%9F%E9%85%92%E6%B8%AC-%E5%B0%8E%E9%81%8A%E6%80%92%E8%BD%9F%E5%A4%AA%E8%AA%87%E5%BC%B5/ar-BBHoK5y'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '大氣汙染學 賀渾蛋 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>大 氣 汙 染 學</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賀 渾 蛋</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://news.tvbs.com.tw/politics/844375'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '共同市場競爭論 胡迪騎紅心 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>共 同 市 場 競 爭 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>胡 迪 騎 紅 心</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/life/breakingnews/2198232'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '共享論 任你騎 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>共 享 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>任 你 騎</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/life/breakingnews/2127638'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '兩岸經濟論 王果採 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>兩 岸 經 濟 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>王 果 採</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/life/breakingnews/2287261'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '眼裡沒有煞車這一回事 謝冥虹 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>眼 裡 沒 有 煞 車 這 一 回 事</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>謝 冥 虹</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/life/breakingnews/2295644'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '預算夠嗎? 賀渾蛋 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>預 算 夠 嗎 ?</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賀 渾 蛋</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2230683'>連結</a></td>");
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