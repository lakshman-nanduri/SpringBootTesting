<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<body>

<h1>update your details</h1>

<form action="saveUpdatedDetails" method="post">
<pre>
 <label>Id</label>
 <input type="text" name="id" value="${studentDetails.id}">
 <label>Name</label>
 <input type="text" name="name" value="${studentDetails.name}">
 <label>Mobile</label>
 <input type="text" name="mobile" value="${studentDetails.mobile}">
 <label>Class</label>
 <input type="text" name="standard" value="${studentDetails.standard}">
 <label>Year</label>
 <input type="text" name="year" value="${studentDetails.year}">
 <input type="submit" value="update">
 </pre>
</form>

${updateMsg}

</body>
</html>