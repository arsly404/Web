<%@page contentType = "text/html; charset = utf-8"
	import="java.awt.*,java.awt.event.*,javax.swing.*,java.io.*,java.*,javax.servlet.http.HttpServletRequest,java.util.*"
%>
<html>
<head>
<meta charset="utf-8">
<head>
<title>線 上 選 課 系 統</title>
</head>
<body background="006.jpg">
<script language="JavaScript1.1">
	function checkForm()
{
			if(document.a1.number.value=="")  //文字輸入框防呆
			{
				alert("請輸入任一數字");
				return false;
			}
}
</script>
<center>
<form action = "classfinalpasstest9.jsp" method="post" name = "a1" onsubmit = "return checkForm()">
<font color="white" face = "標楷體" size = "10">終 極 密 碼</font><br>
<hr>
<font size = "5" color= "white" face = "標楷體">請 猜 一 個 數 字 (0~9)</font>
<input onkeyup="value=value.replace(/[^\d]/g,'') "type = "text" name= "number" maxlength= "1" min= "1" size= "3" style="ime-mode:disabled">
<input type = "submit" value = "送出" size = "2">
<br>
<br>
<br>
<font size = "8" face = "標楷體" color="#FFAA33">遊 戲 簡 易 介 紹</font><br><br>
<font size = "5" face = "標楷體" color="white">選 擇 的 數 字 為 0 ~ 9</font><br><br>
<font size = "5" face = "標楷體" color="#33FFDD">並 在 其 中 有 一 個 數 字 必 須 被 猜 中</font><br><br>
<font size = "5" face = "標楷體" color="#33FFDD">猜 中 該 數 字 ———— 就 可 以 選 課 囉!!</font><br><br>
<font size = "10" face = "標楷體" color="red">那 麼 就 來 開 始 猜 測 吧!!</font>
<br>
<br>
<input type = 'button' value = '回科系選單' onClick = 'history.go(-1)'>
<br>
<br>
<img src="012.jpg" alt="Smiley face" width="600" height="450">
	<%
		Random rand = new Random();
		int y = rand.nextInt(10);
		session.putValue("randok" , y);
	%>
</center>
</form>
</body>
</html>