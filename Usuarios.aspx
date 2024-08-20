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
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Buscar por nombre..."></asp:TextBox>
            <!-- filtro para buscar por tipo usuario -->
            <asp:DropDownList ID="DropDownList_Filtro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Filtro_SelectedIndexChanged">
            <asp:ListItem Text="Todos" Value="0"></asp:ListItem>
            <asp:ListItem Text="Cliente" Value="2"></asp:ListItem>
            <asp:ListItem Text="Administrador" Value="1"></asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="Buscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
           
        </div>
        <div class="insertarUsuarios">
            <div id="insercion" class="datos">
                <div id="nombre" class="datos">
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre:"></asp:Label>
                    <asp:TextBox ID="tbNombre" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="apaterno" class="datos">
                    <asp:Label ID="lbaPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
                    <asp:TextBox ID="tbaPaterno" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="amaterno" class="datos">
                    <asp:Label ID="lbaMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
                    <asp:TextBox ID="tbaMaterno" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="fnacimiento" class="datos">
                    <asp:Label ID="lbfNac" runat="server" Text="Fecha de nacimiento:"></asp:Label>
                    <asp:TextBox ID="tbfNac" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="email" class="datos">
                    <asp:Label ID="lbEmail" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="tbEmail" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="password" class="datos">
                    <asp:Label ID="lbPassword" runat="server" Text="Contraseña:"></asp:Label>
                    <asp:TextBox ID="tbPassword" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                   <div id="celular" class="datos">
                       <asp:Label ID="lbCelular" runat="server" Text="Celular:"></asp:Label>
                       <asp:TextBox ID="tbCelular" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                   </div>
                <div id="peso" class="datos">
                    <asp:Label ID="lbPeso" runat="server" Text="Peso:"></asp:Label>
                    <asp:TextBox ID="tbPeso" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="altura" class="datos">
                    <asp:Label ID="lbAltura" runat="server" Text="Altura:"></asp:Label>
                    <asp:TextBox ID="tbAltura" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
                <div id="tipousuario" class="datos">
                    <asp:Label ID="lbTipo" runat="server" Text="Tipo Usuario:"></asp:Label>
                    <asp:TextBox ID="tbTipo" AutoPostBack="false" runat="server" Required="True"></asp:TextBox>
                </div>
            </div>
            <div id="guardar" class="buttons">
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            </div>
            <div id="actualizar" class="buttons">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            </div>
            <div id="borrar" class="buttons">
                <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
            </div>
        </div>
        <div class="table-container">
            
            <asp:GridView ID="GridView_Usuarios" runat="server" Width="443px" OnSelectedIndexChanged="GridView_Usuarios_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
             
                    <asp:ButtonField Text="Seleccionar" />
             
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            
        </div>
        
    </div>
</body>
        </div>
    </form>
</body>
</html>
