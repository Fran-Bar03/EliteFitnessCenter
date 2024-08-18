<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="EliteFitnessCenter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Usuarios</title>
    <link rel="stylesheet" href="Usuarios.css"/>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <body>
    <div class="container">
        <div class="header">
            <h2>Administrar Usuarios</h2>
        </div>
        <div class="search-bar">
            <input type="text" class="form-control" placeholder="Buscar por nombre o correo...">

            <!-- filtro para buscar por tipo usuario -->
            <asp:DropDownList ID="DropDownList_Filtro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Filtro_SelectedIndexChanged">
            <asp:ListItem Text="Todos" Value="0"></asp:ListItem>
            <asp:ListItem Text="Cliente" Value="2"></asp:ListItem>
            <asp:ListItem Text="Administrador" Value="1"></asp:ListItem>
            </asp:DropDownList>

            <button class="btn btn-primary">Buscar</button>
        </div>
        <div class="table-container">
            
            <asp:GridView ID="GridView_Usuarios" runat="server" AutoGenerateColumns="true" Width="443px" OnSelectedIndexChanged="GridView_Usuarios_SelectedIndexChanged">
                <Columns>
             
                </Columns>
            </asp:GridView>
            
        </div>
        
    </div>
</body>
        </div>
    </form>
</body>
</html>
