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
     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
     <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
     <link rel="stylesheet" href="css/flaticon.css" type="text/css"/>
     <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"/>
     <link rel="stylesheet" href="css/barfiller.css" type="text/css"/>
     <link rel="stylesheet" href="css/magnific-popup.css" type="text/css"/>
     <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"/>
     <link rel="stylesheet" href="Calculadora.css" type="text/css"/>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Breadcrumb Section Begin -->
            <section class="breadcrumb-section set-bg" data-setbg="img/123456.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="breadcrumb-text">
                                <h2>IMC calculadora</h2>
                                <div class="bt-option">
                                    <a href="Inicio.aspx">Inicio</a>
                                    <span>IMC calculadora</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- BMI Calculator Section Begin -->
            <section class="bmi-calculator-section spad">
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
                                <form id="bmi-form">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="altura" type="number" runat="server" placeholder="Altura / cm"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="peso" type="number" runat="server" placeholder="Peso / Kg"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="edad" type="number" runat="server" placeholder="Edad"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6">
                                            <select id="sex" required>
                                                <option value="">Selecciona Sexo</option>
                                                <option value="male">Masculino</option>
                                                <option value="female">Femenino</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-12">
                                            <asp:Button ID="cal" runat="server" Text="Calcular"/>
                                        </div>
                                    </div>
                                </form>
                                <!-- Recuadro para mostrar el resultado -->
                                <div id="result-box">
                                    <p id="result">Tu IMC aparecerá aquí.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- BMI Calculator Section End -->
        </div>
    </form>
</body>
</html>
