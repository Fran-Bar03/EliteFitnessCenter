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
                 <form>
                     <div class="form-group">
                         <label for="class-name">Nombre de la Clase:</label>
                         <input type="text" id="class-name" name="class-name" required>
                     </div>
                     <div class="form-group">
                         <label for="instructor-name">Nombre del Instructor:</label>
                         <input type="text" id="instructor-name" name="instructor-name" required>
                     </div>
                     <div class="form-group">
                         <label for="class-time">Hora de la Clase:</label>
                         <input type="time" id="class-time" name="class-time" required>
                     </div>
                     <button type="submit" class="reserve-button">Publicar</button>
                 </form>
             </div>
        </div>
    </form>
</body>
</html>
