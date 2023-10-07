<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/style4.css">
</head>
<body>

<!-- JSTL form tag the path should be same as entity class variables -->
 <div class="container">
 <div class="title">Update Customer Details</div>
<form:form action="update" modelAttribute="cust" id="form"> 
<div class="input-box">
<span class="details">ID</span>
     <form:input id="input" path="id"/><br>
   </div>
   <div class="input-box">
   <span class="details">Name</span>
    <form:input path="name"/><br>
    </div>
    <div class="input-box">
    <span class="details">Age</span>
     <form:input path="age"/><br>
     </div>
     <div class="input-box">
     <span class="details">E-Mail-id</span>
 <form:input path="email"/><br>
 </div>
 <div class="input-box">
 <span class="details">Gender</span>
  <form:input path="gender"/><br>
  </div>
  <div class="input-box">
  <span class="details">Date of Birth</span>
    <form:input path="dob"/><br>
    </div>
     <div class="button">
        <form:button>Update</form:button>
        </div>
</form:form>

</div>


</body>
</html>