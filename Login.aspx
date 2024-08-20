<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EliteFitnessCenter.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="Login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlay"></div>
        <div class="container">
            <div class="form-container">
                <div class="logo">
                    <!-- Puedes agregar aquí una imagen de logo si es necesario -->
                </div>
                <h1>Iniciar Sesión</h1>
                <div class="form-group">
                    <asp:TextBox ID="email" runat="server" CssClass="input-field" placeholder="Correo electrónico"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="pass" runat="server" CssClass="input-field" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                </div>
                <asp:Button ID="btningresar" runat="server" Text="Ingresar" CssClass="btn-ingresar" OnClick="Ingresar_Click" />
                <asp:Label ID="Lbmensaje" runat="server" Text="" Font-Bold="true" ForeColor="Orange"></asp:Label>
                <p class="forgot-password">
                    ¿Olvidase tu contraseña? <a href="RecuperarContraseña.aspx">Recuperar contraseña</a>
                ¿Aun no tienes cuenta? <a href="Registrarse.aspx">Registrarse</a>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
