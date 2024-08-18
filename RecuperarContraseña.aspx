<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="EliteFitnessCenter.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Gymshark Password Recovery</title>
<link rel="stylesheet" href="RecuperarContraseña.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="overlay"></div>
<div class="container">
    <div class="form-container">
        <h1>Introduzca su Email</h1>
        <form>
            <asp:TextBox ID="Eemail" type="Email" runat="server" placeholder="Email"></asp:TextBox>
             <asp:TextBox ID="Mensaje"  runat="server" placeholder="Motivo"></asp:TextBox>
            <asp:Button ID="lbenviar" runat="server" Text="Enviar" OnClick="lbenviar_Click"/>
             Volver al inicio de sesión <a href="Login.aspx">Iniciar sesión</a>
        </form>
    </form>
</body>
</html>
