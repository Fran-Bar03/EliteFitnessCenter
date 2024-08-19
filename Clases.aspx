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

     <asp:GridView ID="GridView_Clases" runat="server" AutoGenerateColumns="False">
         <Columns>
             <asp:BoundField DataField="Dia" HeaderText="Dia" />
             <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
             <asp:BoundField DataField="Hora_Inicio" HeaderText="Hora_Inicio" />
             <asp:BoundField DataField="Hora_Fin" HeaderText="Hora_Fin" />
             <asp:BoundField DataField="Instructor" HeaderText="Instructor" />
         </Columns>
     </asp:GridView>
 </section>

 <script src="script.js"></script>
    </form>
</body>
</html>
