<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>ToDo Application</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>

<body>
	
	<div class="container">
	<h3>Add Todo</h3>
	<form:form method="post" modelAttribute="todo">
	<form:hidden path="id"/>
	
	<fieldset class="form-group">
		<form:label path="desc">Description</form:label>
		<form:input path="desc" type="text" class="form-control" required="required"/>
		<form:errors path="desc" cssClass="text-warning" />
	</fieldset>
	
	<fieldset class="form-group">
		<form:label path="targetDate">Date</form:label>
		<form:input path="targetDate" type="text" class="form-control" required="required"/>
		<form:errors path="targetDate" cssClass="text-warning" />
	</fieldset>
	
	<button type="submit" class="btn btn-sucess">Add</button>
	
	</form:form>
	</div>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>

</html>