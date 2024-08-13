<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EliteFitnessCenter.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gymshark Log In</title>
 <link rel="stylesheet" href="Login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <div class="overlay"></div>
 <div class="container">
     <div class="form-container">
         <div class="logo">
         </div>
         <h1>Log In</h1>
         <div action="#" method="post">
             <asp:Textbox ID="email" runat="server"></asp:Textbox>
             <asp:Textbox ID="pass" runat="server"></asp:Textbox>
             <asp:Button ID="btningresar" runat="server" Text="Ingresar" OnClick="Ingresar_Click" />
             <asp:Label ID="Lbmensaje" runat="server" Text="" Font-bold="true" forecolor="Orange"></asp:Label>
         </div>
         </div>
     </div>
     <p >Did you forget your password? <a href="RecuperarContraseña.html">Recover Password</a></p>
        </div>
    </form>
</body>
</html>
