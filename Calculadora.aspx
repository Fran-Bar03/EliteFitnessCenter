<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="EliteFitnessCenter.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">

     <!-- Css Styles -->
      <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
 <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
 <link rel="stylesheet" href="css/flaticon.css" type="text/css">
 <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
 <link rel="stylesheet" href="css/barfiller.css" type="text/css">
 <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
 <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
 <link rel="stylesheet" href="css/style.css" type="text/css">
     <link rel="stylesheet" href="calculadora.css" type="text/css">


                 <!-- Page Preloder -->
         <div id="preloder">
             <div class="loader"></div>
         </div>

         <!-- Offcanvas Menu Section Begin -->
         <div class="offcanvas-menu-overlay"></div>
         <div class="offcanvas-menu-wrapper">
             <div class="canvas-close">
                 <i class="fa fa-close"></i>
             </div>
             <div class="canvas-search search-switch">
                 <i class="fa fa-search"></i>
             </div>
             <nav class="canvas-menu mobile-menu">
                 <ul>
                                <li><a href="Inicio.aspx">Inicio</a></li>
                                <li><a href="Horario.aspx">Clases</a></li>
                                <li><a href="Calculadora.aspx">IMC Calculadora</a></li>
                                <li><a href="Contactanos.aspx">Contactanos</a></li>
                 </ul>
             </nav>
         </div>
         <!-- Offcanvas Menu Section End -->

         <!-- Header Section Begin -->
         <header class="header-section">
             <div class="container-fluid">
                 <div class="row">
                     <div class="col-lg-3">
                     </div>
                     <div class="col-lg-6">
                         <nav class="nav-menu">
                             <ul>
                                <li><a href="Inicio.aspx">Inicio</a></li>
                                <li><a href="Horario.aspx">Clases</a></li>
                                <li><a href="Calculadora.aspx">IMC Calculadora</a></li>
                                <li><a href="Contactanos.aspx">Contactanos</a></li>
                                <li id="UsuariosLink" runat="server"><a href="Usuarios.aspx">Usuarios</a></li>
                             </ul>
                         </nav>
                     </div>

                 <div class="canvas-open">
                     <i class="fa fa-bars"></i>
                 </div>
             </div>
         </header>
         <!-- Header End -->
            <style>
        /* General styles */
        body {
            font-family: 'Open Sans', sans-serif;
            background: #1c1c1c;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        /* Header section */
        .header-section {
            background: #222;
            padding: 10px 0;
            text-align: center;
        }

        .header-section .logo img {
            max-width: 100px;
        }

        /* Breadcrumb section */
        .breadcrumb-section {
            background: url('img/123456.jpg') no-repeat center center;
            background-size: cover;
            padding: 100px 0;
            text-align: center;
        }

        .breadcrumb-section .breadcrumb-text {
            color: #fff;
        }

        .breadcrumb-section .breadcrumb-text h2 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .breadcrumb-section .breadcrumb-text .bt-option a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
        }

        /* BMI Calculator section */
        .bmi-calculator-section {
            padding: 50px 0;
            text-align: center;
        }

        .bmi-calculator-section .section-title {
            margin-bottom: 30px;
        }

        .bmi-calculator-section .section-title h2 {
            font-size: 36px;
            margin: 10px 0;
            color: #ff5722;
        }

        .bmi-calculator-section .chart-table, 
        .bmi-calculator-section .chart-calculate-form {
            background: #333;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .bmi-calculator-section .chart-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .bmi-calculator-section .chart-table th,
        .bmi-calculator-section .chart-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            color: #fff;
        }

        .bmi-calculator-section .chart-table th {
            background: #444;
            text-transform: uppercase;
        }

        .bmi-calculator-section .chart-calculate-form form input,
        .bmi-calculator-section .chart-calculate-form form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #444;
            color: #fff;
        }

        .bmi-calculator-section .chart-calculate-form form button {
            width: 100%;
            padding: 10px;
            border: none;
            background: #ff5722;
            color: #fff;
            text-transform: uppercase;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .bmi-calculator-section .result-text {
            color: #fff;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header Section Begin -->
            <div class="header-section">
                <div class="logo">
                    <img src="img/logo.png" alt="Logo" />
                </div>
            </div>
            <!-- Header Section End -->

            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section">
                <div class="breadcrumb-text">
                    <h2>IMC Calculadora</h2>
                    <div class="bt-option">
                        <a href="Inicio.aspx">Inicio</a>
                        <span>IMC Calculadora</span>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- BMI Calculator Section Begin -->
            <section class="bmi-calculator-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="section-title chart-title">
                                <span>Checa tu Cuerpo</span>
                                <h2>TABLA DE CALCULADORA DE IMC</h2>
                            </div>
                            <div class="chart-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>IMC</th>
                                            <th>PESO</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="point">Menor - 18.5</td>
                                            <td>Bajo Peso</td>
                                        </tr>
                                        <tr>
                                            <td class="point">18.5 - 24.9</td>
                                            <td>Saludable</td>
                                        </tr>
                                        <tr>
                                            <td class="point">25.0 - 29.9</td>
                                            <td>Exceso de Peso</td>
                                        </tr>
                                        <tr>
                                            <td class="point">30.0 - Mayor</td>
                                            <td>Obesidad</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="section-title chart-calculate-title">
                                <span>Checa tu Cuerpo</span>
                                <h2>CALCULA TU IMC</h2>
                            </div>
                            <div class="chart-calculate-form">
                                <asp:Panel ID="Panel1" runat="server">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="Height" runat="server" CssClass="form-control" Placeholder="Altura / cm"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="Weight" runat="server" CssClass="form-control" Placeholder="Peso / kg"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="Age" runat="server" CssClass="form-control" Placeholder="Edad"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:DropDownList ID="Sex" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="Selecciona Sexo" Value=""></asp:ListItem>
                                                <asp:ListItem Text="Masculino" Value="male"></asp:ListItem>
                                                <asp:ListItem Text="Femenino" Value="female"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-lg-12">
                                            <asp:Button ID="Button2" runat="server" Text="Calcular"/>
                                        </div>
                                    </div>
                                    <!-- Recuadro para mostrar el resultado -->
                                    <div id="result-box">
                                        <asp:Label ID="Result" runat="server" Text="Tu IMC aparecerá aquí." CssClass="result-text"></asp:Label>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- BMI Calculator Section End -->
        </div>
        
         <!-- Js Plugins -->
         <script src="js/jquery-3.3.1.min.js"></script>
         <script src="js/masonry.pkgd.min.js"></script>
         <script src="js/jquery.slicknav.js"></script>
         <script src="js/owl.carousel.min.js"></script>
         <script src="js/main.js"></script>

    </form>
</body>
</html>
