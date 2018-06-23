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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '國光計畫 高富帥 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>國 光 計 畫</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>高 富 帥</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://tw.appledaily.com/headline/daily/20160702/37292533'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '艦隊收藏 提督SAMA 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>艦 隊 收 藏</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>提 督 SAMA</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://money.udn.com/money/story/5641/2634655'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '油條起鍋 馮迪索 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>油 條 起 鍋</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馮 迪 索</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/10930/2909034'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '微電影錄製 國防布 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>微 電 影 錄 製</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>國 防 布</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://udn.com/news/story/10930/2897754'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '消失的飛機 馮迪索 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>消 失 的 飛 機</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馮 迪 索</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20180103/1085236.htm'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '少子還是少兵 蔡是硬 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>少 子 還 是 少 兵</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蔡 是 硬</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/focus/paper/1162516'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '沒電還是偷蓋布 曹今深 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>沒 電 還 是 偷 蓋 布</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>曹 今 深</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.ettoday.net/news/20130721/244376.htm'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '自我感覺真是太棒了 馮迪索 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>自 我 感 覺 真 是 太 棒 了</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馮 迪 索</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://a.udn.com/focus/2016/09/22/24698/index.html?from=udn-referralnews_ch2artbottom'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '國軍報名系統 國防布 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>國 軍 報 名 系 統</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>國 防 布</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/life/breakingnews/1981117'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '直升機訓練班 馮迪索 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>直 升 機 訓 練 班</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>馮 迪 索</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://video.udn.com/news/800108'>連結</a></td>");
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