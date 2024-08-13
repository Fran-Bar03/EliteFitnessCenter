<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="EliteFitnessCenter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <select class="form-control">
                <option value="all">Todos</option>
                <option value="cliente">Cliente</option>
                <option value="empleado">Empleado</option>
            </select>
            <button class="btn btn-primary">Buscar</button>
        </div>
        <div class="table-container">
            <table class="table  table-hover">
                <thead>
                    <tr>
                        <th>ID Cliente</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Rol</th>
                    </tr>
                </thead>
                    <tr>
                        <td>1</td>
                        <td>Juan Pérez</td>
                        <td>juan@example.com</td>
                        <td>Cliente</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>María Gómez</td>
                        <td>maria@example.com</td>
                        <td>Empleado</td>
                    </tr>
                     <tr>
                        <td>3</td>
                        <td>María Gómez</td>
                        <td>maria@example.com</td>
                        <td>Empleado</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>María Gómez</td>
                        <td>maria@example.com</td>
                        <td>Empleado</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
        </div>
    </form>
</body>
</html>
