<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="EliteFitnessCenter.Contactanos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>Contactanos</title>

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
 <link rel="stylesheet" href="Contactanos.css" type="text/css">
</head>


<body>
    <form id="form1" runat="server">
         <!-- Page Preloder -->
   <div id="preloder">
       <div class="loader"></div>
   </div>

   <!-- Breadcrumb Section Begin -->
   <section class="breadcrumb-section set-bg" data-setbg="img/123456.jpg">
       <div class="container">
           <div class="row">
               <div class="col-lg-12 text-center">
                   <div class="breadcrumb-text">
                       <h2>Contactanos</h2>
                       <div class="bt-option">
                           <a href="Inicio.aspx">Inicio</a>
                           <span>Contactanos</span>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Contact Section Begin -->
   <section class="contact-section spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-6">
                   <div class="section-title contact-title">
                       <span>Contactanos</span>
                       <h2>GET IN TOUCH</h2>
                   </div>
                   <div class="contact-widget">
                       <div class="cw-text">
                           <i class="fa fa-map-marker"></i>
                           <p>333 Middle Winchendon Rd, Rindge,<br/> NH 03461</p>
                       </div>
                       <div class="cw-text">
                           <i class="fa fa-mobile"></i>
                           <ul>
                               <li>125-711-811</li>
                               <li>125-668-886</li>
                           </ul>
                       </div>
                       <div class="cw-text email">
                           <i class="fa fa-envelope"></i>
                           <p>Support.gymcenter@gmail.com</p>
                       </div>
                   </div>
               </div>
               <div class="col-lg-6">
                   <div class="leave-comment">
                       <form action="#">
                           <input type="text" placeholder="Nombre">
                           <input type="text" placeholder="Email">
                           <input type="text" placeholder="Sitio Web">
                           <textarea placeholder="Comentario"></textarea>
                           <button type="submit">Enviar</button>
                       </form>
                   </div>
               </div>
           </div>
           <div class="map">
               <iframe
                   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12087.069761554938!2d-74.2175599360452!3d40.767139456514954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c254b5958982c3%3A0xb6ab3931055a2612!2sEast%20Orange%2C%20NJ%2C%20USA!5e0!3m2!1sen!2sbd!4v1581710470843!5m2!1sen!2sbd"
                   height="550" style="border:0;" allowfullscreen=""></iframe>
           </div>
       </div>
   </section>
   <!-- Contact Section End -->

   <!-- Search model Begin -->
   <div class="search-model">
       <div class="h-100 d-flex align-items-center justify-content-center">
           <div class="search-close-switch">+</div>
           <form class="search-model-form">
               <input type="text" id="search-input" placeholder="Search here.....">
           </form>
       </div>
   </div>
   <!-- Search model end -->

   <!-- Js Plugins -->
   <script src="js/jquery-3.3.1.min.js"></script>
   <script src="js/masonry.pkgd.min.js"></script>
   <script src="js/jquery.slicknav.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/main.js"></script>
    </form>
</body>
</html>
