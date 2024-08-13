<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clases.aspx.cs" Inherits="EliteFitnessCenter.Clases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Horarios</title>
<link rel="stylesheet" href="styles.css"/>
<link href="Clases.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <section class="breadcrumb-section">
     <div class="breadcrumb-text">
         <h2>HORARIOS</h2>
         </div>
     </div>
 </section>

 <section class="schedule-section">
     <div class="section-title">
         <span>Organiza tu tiempo</span>
         <h2>ORGANIZA TU TIEMPO</h2>
     </div>

     <div class="class-filter">
         <button>Todos las clases</button>
         <button>Tips Fitness</button>
         <button>Motivación</button>
         <button>Workout</button>
     </div>

     <div class="schedule-table">
         <table>
             <thead>
                 <tr>
                     <th></th>
                     <th>Lunes</th>
                     <th>Martes</th>
                     <th>Miércoles</th>
                     <th>Jueves</th>
                     <th>Viernes</th>
                     <th>Sábado</th>
                     <th>Domingo</th>
                 </tr>
             </thead>
             <tbody>
                 <tr>
                     <td>6.00am - 8.00am</td>
                     <td>PESOS LIBRES<br>R.Lefew D. Loce</td>
                     <td>CARDIO<br>R.Lefew D. Loce</td>
                     <td>YOGA<br>Keef Shen</td>
                     <td>FITNESS<br>Keef Shen</td>
                     <td>FITNESS<br>Kimberly Stone</td>
                     <td>BOX<br>Rachel Adam</td>
                     <td>CULTURISMO<br>Robert Cage</td>
                 </tr>
                 <tr>
                     <td>10.00am - 12.00pm</td>
                     <td colspan="2" class="empty"></td>
                     <td>FITNESS<br>Kimberly Stone</td>
                     <td>PESOS LIBRES<br>R.Lefew D. Loce</td>
                     <td>YOGA<br>Keef Shen</td>
                     <td>CARDIO<br>Rachel Adam</td>
                     <td>FITNESS<br>Kimberly Stone</td>
                 </tr>
                 <tr>
                     <td>5.00pm - 7.00pm</td>
                     <td>BOX<br>Rachel Adam</td>
                     <td>KARATE<br>Donald Grey</td>
                     <td>CULTURISMO<br>Robert Cage</td>
                     <td>KARATE<br>Donald Grey</td>
                     <td>YOGA<br>Keef Shen</td>
                     <td>BOX<br>Rachel Adam</td>
                     <td>CULTURISMO<br>Robert Cage</td>
                 </tr>
                 <tr>
                     <td>7.00pm - 9.00pm</td>
                     <td>CARDIO<br>R.Lefew D. Loce</td>
                     <td colspan="2" class="empty"></td>
                     <td>YOGA<br>Keef Shen</td>
                     <td>KARATE<br>Donald Grey</td>
                     <td>BOX<br>Rachel Adam</td>
                     <td>CULTURISMO<br>Robert Cage</td>
                 </tr>
             </tbody>
         </table>
     </div>
 </section>

 <script src="script.js"></script>
    </form>
</body>
</html>
