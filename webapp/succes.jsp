<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<style>
  body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #a1ffce, #faffd1);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
  }
  h1 {
      color: #2e7d32;
      text-align: center;
      margin-bottom: 20px;
      animation: glow 1.5s infinite alternate;
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
  .login {
      background: #4caf50;
      color: white;
  }
  .login:hover {
      background: #2e7d32;
  }
  .home {
      background: #74ebd5;
      color: #333;
  }
  .home:hover {
      background: #4bb3a7;
      color: white;
  }
  @keyframes glow {
      from { text-shadow: 0 0 10px #66bb6a; }
      to { text-shadow: 0 0 20px #43a047, 0 0 30px #1b5e20; }
  }
</style>
</head>
<body>
  <h1>🎉 Registration Successful 🎉</h1>
  <% String name = (String)session.getAttribute("Name"); %>
  <h2>Congratulations <%= name != null ? name : "User" %>, you have registered successfully!</h2>
  <p>Welcome to our web application. You can now log in and start exploring.</p>

  <div>
    <button class="btn login" onclick="window.location.href='login.html'">🔑 Go to Login</button>
    <button class="btn home" onclick="window.location.href='index.html'">🏠 Go to Home</button>
  </div>
</body>
</html>
