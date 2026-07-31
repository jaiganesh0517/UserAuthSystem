<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Failed</title>
<style>
  body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #ff9a9e, #fecfef);
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
      animation: shake 0.5s;
      animation-iteration-count: infinite;
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
  .home {
      background: #74ebd5;
      color: #333;
  }
  .home:hover {
      background: #4bb3a7;
      color: white;
  }
  @keyframes shake {
      0% { transform: translateX(0); }
      25% { transform: translateX(-5px); }
      50% { transform: translateX(5px); }
      75% { transform: translateX(-5px); }
      100% { transform: translateX(0); }
  }
</style>
</head>
<body>
  <h1>❌ Registration Failed</h1>
  <% String uname = (String)session.getAttribute("name"); %>
  <h2>Sorry <%= uname != null ? uname : "User" %>, your registration could not be completed.</h2>
  <p>Please check your details and try again.</p>

  <div>
    <button class="btn retry" onclick="window.location.href='register.html'">🔄 Try Again</button>
    <button class="btn home" onclick="window.location.href='index.html'">🏠 Go to Home</button>
  </div>
</body>
</html>
