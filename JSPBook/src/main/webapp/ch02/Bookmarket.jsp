<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Book Market Mall</title>
</head>
<body>

	<nav class = "navbar navbar-expand  navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./Bookmarket.jsp">Home</a>
			</div>
		</div>
	</nav>
	
	<%!
		String bmm = "Book Market Mall";
		String greet = "Welcome to Book Market";
	%>
	<div class = "jumbotron">
		<h1 class = "display-3">
			<%= bmm %>
		</h1>
	</div>
	
	<main role = "main">
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= greet %>
			</h3>
		</div>
		<hr>
	</div>
	</main>
</body>
</html>