<%@page contentType = "text/html; charset = utf-8"
	import="java.awt.*,java.awt.event.*,javax.swing.*,java.io.*,java.*"
%>
<html>
<meta http-equiv = "Content-Type" content = "text/html; charset = utf-8">
<meta http-equiv = "Content-Language" content = "zh-tw"> 
<head>
<title>線 上 選 課 系 統</title>
</head>
<body background = "006.jpg">
<center>
<form method = "post" action = "student.htm">
<%
		request.setCharacterEncoding("utf-8");
		String ID [] = request.getParameterValues("id");
		String Password [] = request.getParameterValues("password");
		
		session.putValue("ID_session",ID);
	
		String Path = request.getRealPath("/");
		Path = Path + "/1061TP_9/Exam1000.txt";
		FileReader objReader = new FileReader(Path);
		BufferedReader objBuffer = new BufferedReader(objReader);
		
		String ID_Data = "";
		String Pass_Data = "";
		int index = 0;
		while((ID_Data = objBuffer.readLine()) != null && (Pass_Data = objBuffer.readLine()) != null)
		{
			if(ID_Data.equals(ID[0]) && Pass_Data.equals(Password[0]))
			{
				index = 1;
				response.sendRedirect("classdata.jsp");
				break;
			}
			if(ID_Data.equals(ID[0]))
			{
				index = 1;
				out.println("<h2><font color = white>密碼錯誤!!</font>");
				break;
			}
		}
		if(index == 0)
		{
			out.println("<h2><font color = white>無此帳號!!</font>");
		}
		objReader.close();
		objBuffer.close();
%>
	<br>
	<br>	
</form>
</center>
</body>
</html>	