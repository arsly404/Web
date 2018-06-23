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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '影片二創製作 徐是為 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>影 片 二 創 製 作</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>徐 是 為</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/7321/2661742'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '藥物概論 屠嚎 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>藥 物 概 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>屠 嚎</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.setn.com/News.aspx?NewsID=207478'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '個人心理為行為 張贖驚 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>個 人 心 理 與 行 為</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>張 贖 驚</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://tw.appledaily.com/new/realtime/20171116/1242269/'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '權力與法律 吳全力 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>權 力 與 法 律</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>吳 全 力</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171227/1073326.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '微電影拍攝 呂泰狼 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>微 電 影 拍 攝</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>呂 泰 狼</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171127/1060818.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '基礎建設學 林泉 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>秘 密 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馬 營 酒</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20170413/903888.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '金錢流向 林黃易 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>金 錢 流 向</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>林 黃 易</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171120/1056313.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '刺激行銷 肚子軍 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>司 法 權 益 探 討</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>魏 定 罪</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20151127/604298.htm'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '隱私與社會 王yee凡 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>隱 私 與 社 會</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>王 yee 凡</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171107/1046968.htm?from=ettoday_app'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '國牒論 王餅中 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>國 牒 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>王 餅 中</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20171219/1075447.htm?from=ettoday_app'>連結</a></td>");
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