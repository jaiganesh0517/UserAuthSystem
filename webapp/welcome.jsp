<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
<style>
  body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #74ebd5, #ACB6E5);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
  }
  h1 {
      text-align: center;
      color: #333;
  }
  h2 {
      text-align: center;
      color: #444;
  }
</style>
</head>
<body>
  <h1><marquee>Logged in Successfully</marquee></h1>
  <% String email = (String)session.getAttribute("email"); %>
  <h2><marquee>
    Welcome <%= email %>, You have logged in successfully
  </marquee></h2>
</body>
</html>
