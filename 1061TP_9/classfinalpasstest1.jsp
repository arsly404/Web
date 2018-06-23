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
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '功德說 賴打 3'>01</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>功 德 說</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賴 打</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/breakingnews/2267795'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '南向說 鄧人中 3'>02</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>南 向 說</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>鄧 人 中</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.ltn.com.tw/news/politics/paper/1164932'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '詐騙論 姑婆勇 3'>03</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>詐 騙 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>姑 婆 勇</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.nownews.com/news/20171228/2670501'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '課稅行銷 卓水溪 3'>04</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>課 稅 行 銷</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>卓 水 溪</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.chinatimes.com/realtimenews/20171227004346-260407'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '年金概論 林千億 3'>05</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>年 金 概 論</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>林 千 億</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.businessweekly.com.tw/article.aspx?id=30186&type=Indep'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '基礎建設學 林泉 3'>06</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>基 礎 建 設 學</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>林 泉</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.thenewslens.com/article/64335'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '基礎建設學 林泉 3'>07</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>空 氣 學</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>蔡 紅 的</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.cna.com.tw/news/firstnews/201712310013-1.aspx'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '刺激行銷 肚子軍 3'>08</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>刺 激 行 銷</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>肚 子 軍</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'https://www.cw.com.tw/article/article.action?id=5074438'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '創新農業 賴打 3'>09</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>創 新 農 業</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賴 打</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://www.chinatimes.com/realtimenews/20171222005203-260407'>連結</a></td>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<td width = '10%' bgcolor = #00ffff><center><input type = 'checkbox' name = 'check' value = '水源管控 賴打 3'>10</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>水 源 管 控</td>");
			out.println("<td width = '35%' bgcolor = #00ffff><center>賴 打</td>");
			out.println("<td width = '10%' bgcolor = #00ffff><center>3</td>");
			out.println("<td width = '50%' bgcolor = #00ffff><center><a href = 'http://news.pchome.com.tw/public/ey/20171221/index-51383282052993101016.html'>連結</a></td>");
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