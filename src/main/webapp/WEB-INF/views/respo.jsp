<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<body>
<h1 style="color:blue">List of Feedbacks</h1>
	<table>
		<tr>
			<th>FeedbackFrom</th>
			<th>Date</th>
			<th>Descript</th>
		</tr>
		<c:forEach items="${rest}" var="r">
		<tr>
		
				<td>${r.feedbackFrom}</td>
				<td>${r.date}</td>
				<td>${r.descript}</td>
		</tr>
		</c:forEach>
		
	
	</table>

</body>
</html>