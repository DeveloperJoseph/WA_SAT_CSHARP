<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MIS_TAREAS.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MIS_TAREAS" %>

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
    <title>MIS TAREAS</title>
</head>
<body class="bg-dark">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix text-white fondo-jS">
        <a class="navbar-brand text-dark text-white" href="WF_MENU_PRINCIPAL_EMPLEADO.aspx"><b>SAT - INTRANET</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="jumbotron bg-primary text-white">
            <h1>MIS TAREAS</h1>
        </div>
    </div>
    <form id="form1" runat="server" class="form-control-sm">
        <div class="container">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="text" class="text-white">CODIGO *</label>
                    <asp:TextBox ID="txtCodigoID" runat="server" placeholder="Ingresar tu código"></asp:TextBox>
                    &nbsp;
                  <asp:Button ID="ButtonSearchTareas" runat="server" CssClass="btn btn-primary"
                      Text="Ver mis tareas" OnClick="ButtonSearchTareas_Click" />
                </div>
            </div>
        </div>
        <div class="bg-light">
            <asp:GridView ID="GridViewSearchTareas" runat="server" CssClass="table table-sm  table-hover"
                 AllowCustomPaging="True" HorizontalAlign="Center" PageSize="5">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
