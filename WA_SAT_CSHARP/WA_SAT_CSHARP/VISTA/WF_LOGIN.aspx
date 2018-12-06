<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_LOGIN.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
     <title>Acceso al Sistema</title>
    <script>
        $(document).ready(function () {
            document.getElementById("fechayhora").innerHTML = "Fecha de sesión: " + Date();
            /*
            if ($("#btnAcceder").click) {
                var email = $("#email").val();
                if (email.length < 0) {
                    window.alert("ingresar email");
                }
            }*/
        });
    </script>
</head>
<body>
    <div class="container">
        <br />
        <div class="jumbotron jumbotron-fluid bg-danger text-center text-white">
            <h1 class="display-4">ACCESO AL SISTEMA SAT</h1>
            <p class="lead" id="fechayhora"></p>
        </div>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="textTIPO">Tipo de usuario:</label>
                <asp:DropDownList ID="DropDownListCargo" CssClass="dropdown" runat="server"></asp:DropDownList>
                <br />
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <br />
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Width="337px"></asp:TextBox>
            </div>
            <div class="form-group">&nbsp;<label for="pwd">Password</label>&nbsp;
                <br />
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"  Width="337px" TextMode="Password"></asp:TextBox>
                <br />
            </div>
            <div class="form-group">
                <asp:Button ID="btnAcceder" CssClass="btn btn-danger" runat="server" Text="Acceder al sistema" OnClick="btnAcceder_Click" />
                <br />
                <br />
                <asp:Label ID="LabelMensaje" runat="server" Text="" CssClass="text-danger"></asp:Label>
            </div>
        </form>
    </div>
    <br />
</body>
</html>
