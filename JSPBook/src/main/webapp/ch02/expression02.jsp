<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%
		int a = 10;
		int b = 20;
		int c = 30;
		
		out.print("a + b + c = "); 
	%>
	<%= a + b + c %>
</body>
</html>