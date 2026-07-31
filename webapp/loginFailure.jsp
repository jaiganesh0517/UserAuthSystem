<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
  body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #ff9a9e, #fad0c4);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
  }
  h1 {
      color: #b00020;
      text-align: center;
      margin-bottom: 20px;
      animation: blink 1.5s infinite;
  }
  h2 {
      color: #333;
      text-align: center;
      margin-bottom: 30px;
  }
  .btn {
      padding: 10px 20px;
      margin: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      transition: 0.3s;
  }
  .retry {
      background: #ff6f61;
      color: white;
  }
  .retry:hover {
      background: #e63946;
  }
  .signup {
      background: #74ebd5;
      color: #333;
  }
  .signup:hover {
      background: #4bb3a7;
      color: white;
  }
  @keyframes blink {
      50% { opacity: 0; }
  }
</style>
</head>
<body>
  <h1>❌ Login Failed</h1>
  <% 
     String error = request.getParameter("error"); 
     if(error == null) error = "Invalid credentials";
  %>
  <h2>Sorry, <%= error %>. Please try again or sign up!</h2>

  <div>
    <button class="btn retry" onclick="window.location.href='login.html'">🔄 Try Again</button>
    <button class="btn signup" onclick="window.location.href='register.html'">📝 Sign Up</button>
  </div>
</body>
</html>
