<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="EliteFitnessCenter.Pagos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pagos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="Pagos.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Pago en Línea</h1>
            <div class="payment-icons">
                <asp:Image ID="VisaImage" runat="server" ImageUrl="~/img/visa.png" AlternateText="Visa" />
                <asp:Image ID="MasterCardImage" runat="server" ImageUrl="~/img/mastercard.png" AlternateText="MasterCard" />
                <asp:Image ID="AmexImage" runat="server" ImageUrl="~/img/american express.png" AlternateText="American Express" />
                <asp:Image ID="SantanderImage" runat="server" ImageUrl="~/img/Santander.png" AlternateText="Santander" />
            </div>

            <div class="membership-description">
                <p><strong>Membresías disponibles:</strong></p>
                <ul>
                    <li>Básica: $399</li>
                    <li>Unlimited: $499</li>
                    <li>Priority: $799</li>
                </ul>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="name">Nombre del titular:</label>
                    <asp:TextBox ID="nombret" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="card-number">Número de tarjeta:</label>
                    <asp:TextBox ID="ntarjeta" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label for="amount">Monto:</label>
                <asp:DropDownList ID="monto" runat="server" CssClass="form-control" required="required">
                    <asp:ListItem Text="Selecciona un monto" Value="" />
                    <asp:ListItem Text="Básica - $399" Value="399" />
                    <asp:ListItem Text="Unlimited - $499" Value="499" />
                    <asp:ListItem Text="Priority - $799" Value="799" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="expiry-date">Fecha de expiración:</label>
                <asp:TextBox ID="Fexpiracion" runat="server" CssClass="form-control" placeholder="MM/AA" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="cvv">Código de seguridad:</label>
                <asp:TextBox ID="cvv" runat="server" CssClass="form-control" placeholder="123" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="method">Método de pago:</label>
                <asp:DropDownList ID="Mpago" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Selecciona un método" Value="" />
                    <asp:ListItem Text="Tarjeta de crédito" Value="Tarjeta de crédito" />
                    <asp:ListItem Text="Débito" Value="Débito" />
                    <asp:ListItem Text="PayPal" Value="PayPal" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="Pagar" runat="server" Text="Pagar" CssClass="pay-button btn btn-primary" OnClick="Pagar_Click" />
            <div class="security-notice">
                <p>Tus pagos se realizan de forma segura</p>
                <asp:HyperLink ID="CancelarLink" runat="server" NavigateUrl="~/Inicio.aspx">Cancelar</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>