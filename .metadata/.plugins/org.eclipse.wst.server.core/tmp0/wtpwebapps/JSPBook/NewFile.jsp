<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>

<body>
	<%! int data = 50; %>

	<%!
		int sum(int a, int b) {
		return a + b;
	}
	
	%>
	
	<% out.println("Value of the variable is: " + data + "<br>"); %>
	<% out.println("2 + 3 = " + sum(2, 3)); %>
	
</body>
</html>