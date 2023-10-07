<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>
<link rel="stylesheet" href="styles/style.css">
</head>
<body>
  <div class="container">
<div class="title">Customer Registration</div>
<form action="register">
    <div class="user-details">
        <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="enter your name" name="name" required>
        </div>
        <div class="input-box">
            <span class="details">Age</span>
            <input type="text" placeholder="enter your age" name="age" required>
        </div>
        <div class="input-box">
            <span class="details">E-Mail-id</span>
            <input type="text" placeholder="enter your email-id" name="email" required>
        </div>
        <span>Gender :</span>
        <div class="gender-details">
    
           <span id="mal"> Male  <input id="m" type="radio" name="gender" value="male">
           </span>
           <span id="fe  mal">
           Female <input  type="radio" name="gender" value="male">
           </span>
           </div>


        <div class="input-box">
            <span class="details">Date Of Birth</span>
            <input type="text" placeholder="enter your date of birth" name="dob" required>
        </div>
    </div>
   

    <div class="button">
        <input type="submit" value="Register">
    </div>
   

</form>

  </div>
</body>
</html>