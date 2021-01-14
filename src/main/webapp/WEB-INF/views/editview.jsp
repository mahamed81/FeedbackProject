<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Employees</title>
</head>
<body>
	<h1 style="color: blue">List of Employees</h1>
	
	 <form:form  method="post" modelAttribute="edit">
		<table>
			<tr>
				<td>ID</td>
				<td>${edit.id}
				<form:hidden path="id"/>
				</td>
				
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="save"></td>
			</tr>
		</table>

	</form:form>


</body>
</html>