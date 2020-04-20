<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Todo's for ${name}</title>
</head>

<body>
<h3>Your ToDos</h3>
	<table>
		<caption>Your ToDos are: </caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is it done?</th>
			</tr>
		</thead>
		<tbody>
		JSTL For Loop
		<c:forEach items ="${todos}" var="todo">
		<tr>
			<td>${todo.desc}</td>
			<td>${todo.targetDate} </td>
			<td>${todo.done} </td>
		</tr>
		</c:forEach>
		
		</tbody>
	</table>
	<BR/>
	<BR/>
	click here to <a href="/add-todo">Add Todo</a>
</body>

</html>