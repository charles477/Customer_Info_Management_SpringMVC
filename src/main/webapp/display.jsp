<%@page import="com.org.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer View Page</title>
<link rel="stylesheet" href="styles/style3.css">
<style>
 .button1 {
            display: block;
            width: 80%;
            margin: 20px auto;
            padding: 20px; /* Increased padding for larger buttons */
            background: linear-gradient(to right, #314755, #26a0da);;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 24px; /* Increased font size for larger buttons */
            cursor: pointer;

        }

        .button1:hover {
            background: green;
        }

</style>
</head>
<body>

<h1>${emps}</h1>
<h1>${msg}</h1>

<h1>Customer Details</h1>


<table border="2px">
 <tr>
<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Email</th>
<th>Gender</th>
<th>DateOfBirth</th>
<th>Edit</th>
<th>Delete</th>

</tr>
<% List<Customer> custom = (List<Customer>)session.getAttribute("custom");
                for(Customer c:custom){%>
         <tr>
         <td><%=c.getId() %></td>
          <td><%=c.getName() %></td>
         
           <td><%=c.getAge()%></td>
           <td><%=c.getEmail()%></td>
           <td><%=c.getGender()%></td>
           <td><%=c.getDob()%></td>
          
            
            
            
            <td><a href="edit?id=<%= c.getId() %>" class="button edit-button">Edit</a></td>
                    <td><a href="delete?id=<%= c.getId() %>" class="button delete-button">Delete</a></td>
            
           </tr>
         
    <%} %>
    </table>         
                
 


   <a href="home.jsp" class="button1">Back To Home</a>

</body>
</html>