<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">

	<table class="table table-striped">
		<caption>Your ToDos are: </caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is it done?</th>
				<th> </th>
				<th> </th>
			</tr>
		</thead>
		<tbody>
		
		<c:forEach items ="${todos}" var="todo">
		<tr>
			<td>${todo.desc}</td>
			<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"></fmt:formatDate>  </td>
			<td>${todo.done} </td>
			<th><a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">update </a></th>
			<th><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">delete </a></th>
			
		</tr>
		</c:forEach>
		
		</tbody>
	</table>
	
	<div><a class="button" href="/add-todo">Add a Todo</a></div>
	
	<%@ include file="common/footer.jspf" %>
	
	