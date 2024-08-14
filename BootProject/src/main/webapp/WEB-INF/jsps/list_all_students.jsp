<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://jakarta.apache.org/jsp/jstl/core" prefix="c" %> <!-- For jakarta.servlet -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   
   <table>
   <tr>
			<th>Id</th>
			<th>Name</th>
			<th>Class</th>
			<th>Year</th>
			<th>Mobile</th>
			<th>delete</th>
			<th>update</th>
		</tr>
		<c:forEach var="student" items="${listStudents}" >
		<tr>
		<td>${student.id}</td>
			<td>${student.name}</td>
			<td>${student.standard}</td>
			<td>${student.year}</td>
			<td>${student.mobile}</td>
			<td><a href="deleteStudent?id=${student.id}">delete</a></td>
			<td><a href="updateStudent?id=${student.id}">update</a></td>
	   </tr>
		</c:forEach>
	</table>
 

</body>
</html>