<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarClase.aspx.cs" Inherits="EliteFitnessCenter.AgregarClase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="agregarclase.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section class="breadcrumb-section set-bg" data-setbg="img/123456.jpg">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-12 text-center">
                             <div class="breadcrumb-text">
                                 <h2>Agregar Clase</h2>
                                 <div class="bt-option">
                                     <a href="Inicio.aspx">Inicio</a>
                                     <span>Agregar Clase</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </section>

             <div class="form-container">
                 <h1>Agregar Clase</h1>
                     <div class="form-group">
                         <label for="class-name">Dia:</label>
                         <asp:TextBox ID="dia" runat="server" placeholder="dd/MM/yyyy"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label for="instructor-name">Nombre de la clase:</label>
                         <asp:TextBox ID="nclase" runat="server"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label for="class-time">Hora inicio de la Clase:</label>
                          <asp:TextBox ID="horai" runat="server" placeholder="00:00:00"></asp:TextBox>
                     </div>
                      <div class="form-group">
                      <label for="class-time">Hora fin de la Clase:</label>
                      <asp:TextBox ID="horaf" runat="server" placeholder="00:00:00"></asp:TextBox>
                     </div>
                      <div class="form-group">
                      <label for="class-time">Nombre del instructor:</label>
                      <asp:TextBox ID="ninstructor" runat="server"></asp:TextBox>
                      </div>
                     <asp:Button ID="registrar" runat="server" Text="Registrar clase" class="reserve-button" OnClick="registrar_Click" />
                   <asp:Label ID="mensaje" runat="server" Text="" ForeColor="Orange" ></asp:Label>
             </div>
        </div>
    </form>
</body>
</html>
