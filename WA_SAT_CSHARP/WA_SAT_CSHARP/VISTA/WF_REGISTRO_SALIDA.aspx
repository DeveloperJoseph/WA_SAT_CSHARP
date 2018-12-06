<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_REGISTRO_SALIDA.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_REGISTRO_ENTRADA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js"></script>
    <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js"></script>
    <link href="../RECURSOS/Content/Bootstrap/CssJoseph.css" rel="stylesheet" />
    <style>
        .fondo-jS {
            background: url('../RECURSOS/Imagenes/fondo.png');
            width: 100%;
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>

    <title>REGISTRO DE SALIDA</title>
</head>
<body>
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix text-white fondo-jS">
        <a class="navbar-brand text-dark text-white" 
            href="WF_MENU_PRINCIPAL.aspx"><b>SAT - INTRANET</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="jumbotron bg-success text-white">
            <h1>REGISTRO DE SALIDA</h1>
        </div>
    </div>
    <form id="form1" runat="server" class="form-control-sm">
        <div class="container">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="text">CODIGO*</label>
                    <asp:TextBox ID="txtUsuarioID" runat="server" 
                        placeholder="Ingresar código"></asp:TextBox>
                    &nbsp;<asp:Button ID="ButtonRegister" runat="server" 
                        CssClass="btn btn-success"
                        Text="Registrar" OnClick="ButtonRegister_Click" />
                    <br />
                    <br />
                    <asp:Label ID="LabelMensaje"  CssClass="text-danger"
                        runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
