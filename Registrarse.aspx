<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="EliteFitnessCenter.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Registrarse</title>
  <link rel="stylesheet" href="Registrarse.css"/>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
    <div class="overlay"></div>
    <div class="form-container">
        <div class="logo">
        </div>
        <h1>Crear nueva cuenta</h1>
       

        <asp:TextBox ID="nombre" runat="server" placeholder="Nombre"></asp:TextBox>
        <asp:TextBox ID="apaterno" runat="server" placeholder="Apellido Paterno"></asp:TextBox>
        <asp:TextBox ID="amaterno" runat="server" placeholder="Apellido Materno"></asp:TextBox>
        <asp:TextBox ID="fechanac" runat="server" placeholder="dd/MM/yyyy"></asp:TextBox>
        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="pass" runat="server" placeholder="Contraseña"></asp:TextBox>
         <asp:TextBox ID="cel" runat="server" placeholder="Celular"></asp:TextBox>
         <asp:TextBox ID="peso" runat="server" placeholder="Peso(kg)"></asp:TextBox>
         <asp:TextBox ID="altura" runat="server" placeholder="Altura (cm)"></asp:TextBox>
        
            <asp:Button ID="registar" runat="server" Text="Registrarse" OnClick="registar_Click" /> 

        <asp:Label ID="lbmensaje" runat="server" Text="" Font-Bold="true" ForeColor="Orange"></asp:Label>
        
        <p >¿Ya estas registrado? <a href="Login.aspx">Iniciar Sesión</a></p>
           </div>
    </form>
</body>
</html>
