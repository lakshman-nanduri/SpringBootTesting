<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to School</title>
</head>
<body>
     <h2>Student Registration page</h2>
     <form action = "saveStudent" method="post">
     <label>Student Name</label>
     <input type= "text" name="name">
     <label>class</label>
     <input type= "text" name="standard">
     <label>Joining Year</label>
     <input type= "text" name="year">
     <label>Mobile</label>
     <input type= "text" name="mobile">
      <input type= "submit" value="submit">
     </form>
     
     <br></br>
     
     <form action="deleteStudent" method ="post">
       <label>Enter student id</label>
       <input type="text" name ="id">
       <input type="submit" value="delete">
       </form>
       
      
       
      
       
       <%
    String layout = "horizontal"; // This could come from a request parameter, a database, etc.
%>
<div class="<%= layout %>">
    <div>
     <form action="searchStudent" method ="post">
       <label>Enter student id</label>
       <input type="text" name ="id">
       <input type="submit" value="search">
       </form>
    </div>
    <div style="position: absolute; right: 500px;">
     <form action="updateStudent" method="post">
       <label>Existing student</label>
       <input type="text" name="id">
       <button type="submit">search</button>
       </form>
    </div>
</div>

<style>
.horizontal {
    display: flex;
    flex-direction: row;
}

.vertical {
    display: flex;
    flex-direction: column;
}
</style>

       <form action="listAllStudents">
       <button type="submit">ListAll</button>
       </form>

     
     
     ${message}
     ${delete}
     ${search}
     ${updateMsg}
     
</body>
</html>