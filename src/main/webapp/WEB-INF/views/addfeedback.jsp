<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>Feedback Form</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<h1 style="color:blue;">Feedback Form</h1>
	<div class="container">


		<form:form method="post" modelAttribute="form">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="feedbackFrom">Feedback From</form:label>
				<form:input path="feedbackFrom" type="text" class="form-control"
					required="required" />
				<form:errors path="feedbackFrom" cssClass="text-warning" />
			</fieldset>

			<fieldset class="form-group">
				<form:label path="date">Date</form:label>
				<form:input path="date" type="date" class="form-control"
					required="required" />
				<form:errors path="date" cssClass="text-warning" />
			</fieldset>
			
			<fieldset class="form-group">
				<form:label path="descript">Description</form:label>
				<form:textarea path="descript" class="form-control"/>
				<form:errors path="descript" cssClass="text-warning" required="required" />
			</fieldset>
			<button type="submit" class="btn btn-danger">Submit</button>
		</form:form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>