<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EliteFitnessCenter.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <!--Linkeos-->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                         <div class="logo">
                             <a href="./index.html">
                             </a>
                         </div>
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

         <!-- Hero Section Begin -->
         <section class="hero-section">
             <div class="hs-slider owl-carousel">
                 <div class="hs-item set-bg" data-setbg="img/12345.jpg">

                     <div class="container">
                         <div class="row">
                             <div class="col-lg-6 offset-lg-6">
                                 <div class="hi-text">
                                     <span>Dale Forma a tu Cuerpo</span>
                                     <h1>Se <strong>Fuerte</strong> Entrenando Duro</h1>
                                     <a href="#" class="primary-btn">Obtener Info</a>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="hs-item set-bg" data-setbg="img/11234567.jpg">
                     <div class="container">
                         <div class="row">
                             <div class="col-lg-6 offset-lg-6">
                                 <div class="hi-text">
                                     <span>Dale Forma a tu Cuerpo</span>
                                     <h1>Se <strong>Fuerte</strong> Entrenando Duro</h1>
                                     <a href="#" class="primary-btn">Obtener Info</a>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- Hero Section End -->

         <!-- ChoseUs Section Begin -->
         <section class="choseus-section spad">
             <div class="container">
                 <div class="row">
                     <div class="col-lg-12">
                         <div class="section-title">
                             <span>Porque Elegirnos?</span>
                             <h2>SUPERA TUS LIMITES</h2>
                         </div>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-lg-3 col-sm-6">
                         <div class="cs-item">
                             <span class="flaticon-034-stationary-bike"></span>
                             <h4>Equipo Moderno</h4>
                             <p>Todo nuestro equipo es de ultima generacion y con el mejor mantenimiento.</p>
                         </div>
                     </div>
                     <div class="col-lg-3 col-sm-6">
                         <div class="cs-item">
                             <span class="flaticon-033-juice"></span>
                             <h4>Plan de Nutrición Saludable</h4>
                             <p>Consulta con nuestros profesionales y consigue un plan alimenticio que se ajsute a tus metas.</p>
                         </div>
                     </div>
                     <div class="col-lg-3 col-sm-6">
                         <div class="cs-item">
                             <span class="flaticon-002-dumbell"></span>
                             <h4>Plan de Formación Profesional</h4>
                             <p>Nuestros profesionales te ayudaran con una rutina especializada para que cumplas tus metas.</p>
                         </div>
                     </div>
                     <div class="col-lg-3 col-sm-6">
                         <div class="cs-item">
                             <span class="flaticon-014-heart-beat"></span>
                             <h4>Único a tus Necesidades</h4>
                             <p>El lugar en el que podras cumplir tus objetivos.</p>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- ChoseUs Section End -->

         <!-- Classes Section Begin -->
         <section class="classes-section spad">
             <div class="container">
                 <div class="row">
                     <div class="col-lg-12">
                         <div class="section-title">
                             <span>Nuestras Clases</span>
                             <h2>LO QUE OFRECEMOS</h2>
                         </div>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-lg-4 col-md-6">
                         <div class="class-item">
                             <div class="ci-pic">
                                 <img src="" alt="">
                             </div>
                             <div class="ci-text">
                                 <span>FORTALEZA</span>
                                 <h5>Levantamiento de pesas</h5>
                                 <a href="Horario.aspx"><i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-4 col-md-6">
                         <div class="class-item">
                             <div class="ci-pic">
                                 <img src="" alt="">
                             </div>
                             <div class="ci-text">
                                 <span>CARDIO</span>
                                 <h5>Indoor cycling</h5>
                                 <a href="Horario.aspx"><i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-4 col-md-6">
                         <div class="class-item">
                             <div class="ci-pic">
                                 <img src="" alt="">
                             </div>
                             <div class="ci-text">
                                 <span>FORTALEZA</span>
                                 <h5>Levantamiento de pesas rusas</h5>
                                 <a href="Horario.aspx"><i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                         <div class="class-item">
                             <div class="ci-pic">
                                 <img src="" alt="">
                             </div>
                             <div class="ci-text">
                                 <span>CARDIO</span>
                                 <h4>Indoor cycling</h4>
                                 <a href="Horario.aspx"><i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="class-item">
                             <div class="ci-pic">
                                 <img src="" alt="">
                             </div>
                             <div class="ci-text">
                                 <span>ENTRENAMIENTO</span>
                                 <h4>Box</h4>
                                 <a href="Horario.aspx"><i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- ChoseUs Section End -->


         <!-- Pricing Section Begin -->
         <section class="pricing-section spad">
             <div class="container">
                 <div class="row">
                     <div class="col-lg-12">
                         <div class="section-title">
                             <span>Nuestras Membresias</span>
                             <h2>Elige tu membresia</h2>
                         </div>
                     </div>
                 </div>
                 <div class="row justify-content-center">
                     <div class="col-lg-4 col-md-8">
                         <div class="ps-item">
                             <h3>BASIC</h3>
                             <div class="pi-price">
                                 <h2>$ 399.0</h2>
                             </div>
                             <ul>
                                 <li>Aprovechamiento gratuito</li>
                                 <li>Equipos ilimitados</li>
                                 <li>Entrenador personal</li>
                                 <li>Clases para bajar de peso</li>
                                 <li>2 clases semanales</li>
                                 <li>Sin restricción de tiempo</li>
                             </ul>
                            <a href="Pagos.aspx" class="primary-btn pricing-btn">Inscribirse</a>
                         </div>
                     </div>
                     <div class="col-lg-4 col-md-8">
                         <div class="ps-item">
                             <h3>UNLIMITED</h3>
                             <div class="pi-price">
                                 <h2>$ 499.0</h2>
                             </div>
                             <ul>
                                 <li>Aprovechamiento gratuito</li>
                                 <li>Equipos ilimitados</li>
                                 <li>Entrenador personal</li>
                                 <li>Clases para bajar de peso</li>
                                 <li>4 clases semanales</li>
                                 <li>Sin restricción de tiempo</li>
                             </ul>
                             <a href="Pagos.aspx" class="primary-btn pricing-btn">Inscribirse</a>
                         </div>
                     </div>
                     <div class="col-lg-4 col-md-8">
                         <div class="ps-item">
                             <h3>PRIORITY</h3>
                             <div class="pi-price">
                                 <h2>$ 799.0</h2>
                             </div>
                             <ul>
                                 <li>Aprovechamiento gratuito</li>
                                 <li>Equipos ilimitados</li>
                                 <li>Entrenador personal</li>
                                 <li>Clases para bajar de peso</li>
                                 <li>7 clases semanales</li>
                                 <li>Sin restricción de tiempo</li>
                             </ul>
                             <a href="Pagos.aspx" class="primary-btn pricing-btn">Inscribirse</a>
                         </div>
                     </div>
                 </div>
             </div>
         </section>
         <!-- Pricing Section End -->

         <!-- Js Plugins -->
         <script src="js/jquery-3.3.1.min.js"></script>
         <script src="js/masonry.pkgd.min.js"></script>
         <script src="js/jquery.slicknav.js"></script>
         <script src="js/owl.carousel.min.js"></script>
         <script src="js/main.js"></script>
                </div>
    </form>
</body>
</html>
