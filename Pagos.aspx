<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="EliteFitnessCenter.Pagos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Realiza tu pago</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link href="Pagos.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <h1>Pago en Línea</h1>
            <div class="payment-icons">
                <img src="img/visa.png" alt="Visa"/>
                <img src="img/mastercard.png" alt="MasterCard"/>
                <img src="img/american express.png" alt="American Express"/>
                <img src="img/Santander.png" alt="Santander"/>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="name">Nombre del titular:</label>
                    <asp:TextBox ID="nombret" runat="server" required></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="card-number">Número de tarjeta:</label>
                    <asp:TextBox ID="ntarjeta" runat="server" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="expiry-date">Fecha de expiración:</label>
                <input id="expiryDate" type="text" placeholder="MM/AA" runat="server" required />
            </div>
            <div class="form-group">
                <label for="cvv">Código de seguridad:</label>
                <input id="cvv" type="text" placeholder="123" runat="server" required />
            </div>
           <asp:Button ID="Pagar" runat="server" Text="Pagar" type="submit" class="pay-button" OnClick="Pagar_Click"/>
            <div class="security-notice">

                <p>Tus pagos se realizan de forma segura</p>
                <a href="Inicio.aspx" runat="server">Cancelar</a>
            </div>
        </div>
    </form>
    <script>
        document.getElementById("form1").addEventListener("submit", function (event) {
            event.preventDefault();
            alert("¡Pago realizado con éxito!");
        });
    </script>
    
</body>
</html>
