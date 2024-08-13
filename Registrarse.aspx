<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="EliteFitnessCenter.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Gymshark Sign Up</title>
  <link rel="stylesheet" href="CreateNewAccount.css"/>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
    <div class="overlay"></div>
    <div class="form-container">
        <div class="logo">
        </div>
        <h1>Create New Account</h1>
        <form>
            <input type="text" placeholder="Name" required>
            <input type="email" placeholder="Email" required>
            <input type="password" placeholder="Password" required>
            <button type="submit">SIGN UP</button>
        </form>
        <p >Already Registered? <a href="Login.html">Login</a></p>
    </form>
</body>
</html>
