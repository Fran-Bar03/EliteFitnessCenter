<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="EliteFitnessCenter.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Gymshark Password Recovery</title>
    <link href="RecuperarContraseña.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="overlay"></div>
<div class="container">
    <div class="form-container">
        <h1>You Forgot Your Password</h1>
        <form>
            <input type="email" placeholder="Email" required>
            <button type="submit">Set Up</button>
        </form>
    </form>
</body>
</html>
