<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevaContraseña.aspx.cs" Inherits="EliteFitnessCenter.NuevaContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gymshark New Password</title>
    <link rel="stylesheet" href="NuevaContraseña.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlay"></div>
 <div class="container">
     <div class="form-container">
         <h1>New Password</h1>
         <form>
             <input type="text" placeholder="Code" required>
             <input type="password" placeholder="New Password" required>
             <button type="submit">Set Up</button>
         </form>
    </form>
</body>
</html>
