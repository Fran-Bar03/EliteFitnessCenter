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
     <link rel="stylesheet" href="calculadora.css" type="text/css">

        <style>
        /* Estilos básicos para el formulario y el recuadro de resultados */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        .breadcrumb-section {
            padding: 40px 0;
            background: #f9f9f9;
            text-align: center;
        }

        .breadcrumb-section h2 {
            margin: 0;
        }

        .breadcrumb-section .bt-option a {
            text-decoration: none;
            color: #333;
        }

        .bmi-calculator-section {
            padding: 40px 0;
            background: #fff;
        }

        .bmi-calculator-section .section-title {
            text-align: center;
            margin-bottom: 40px;
        }

        .bmi-calculator-section .chart-table,
        .bmi-calculator-section .chart-calculate-form {
            text-align: center;
        }

        .chart-table table {
            margin: auto;
            width: 100%;
            border-collapse: collapse;
        }

        .chart-table th, .chart-table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .chart-calculate-form input,
        .chart-calculate-form select,
        .chart-calculate-form button {
            padding: 10px;
            margin: 5px;
            font-size: 1em;
            width: calc(50% - 22px);
            box-sizing: border-box;
        }

        .chart-calculate-form button {
            width: 100%;
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
        }

        .chart-calculate-form button:hover {
            background-color: #4cae4c;
        }

        #result-box {
            margin-top: 20px;
            padding: 15px;
            border: 2px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            text-align: center;
            font-size: 1.2em;
        }

        #result {
            font-weight: bold;
        }
    </style>
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
                                            <input type="number" id="height" placeholder="Altura / cm" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="number" id="weight" placeholder="Peso / kg" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="number" id="age" placeholder="Edad" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <select id="sex" required>
                                                <option value="">Selecciona Sexo</option>
                                                <option value="male">Masculino</option>
                                                <option value="female">Femenino</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-12">
                                            <button type="submit">Calcular</button>
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

            <!-- Js Plugins -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script>
                $(document).ready(function () {
                    $('#bmi-form').submit(function (event) {
                        event.preventDefault(); // Evita el envío del formulario

                        // Obtiene los valores de los campos
                        var height = parseFloat($('#height').val());
                        var weight = parseFloat($('#weight').val());

                        // Verifica si los valores son válidos
                        if (isNaN(height) || isNaN(weight) || height <= 0 || weight <= 0) {
                            $('#result').text('Por favor, ingresa valores válidos.');
                            return;
                        }

                        // Convierte la altura de cm a metros
                        height = height / 100;

                        // Calcula el IMC
                        var bmi = weight / (height * height);

                        // Determina la categoría del IMC
                        var category;
                        if (bmi < 18.5) {
                            category = 'Bajo Peso';
                        } else if (bmi >= 18.5 && bmi <= 24.9) {
                            category = 'Saludable';
                        } else if (bmi >= 25.0 && bmi <= 29.9) {
                            category = 'Exceso de Peso';
                        } else {
                            category = 'Obesidad';
                        }

                        // Muestra el resultado
                        $('#result').text('Tu IMC es ' + bmi.toFixed(2) + ' (' + category + ')');
                    });
                });
            </script>
        </div>
    </form>
</body>
</html>
