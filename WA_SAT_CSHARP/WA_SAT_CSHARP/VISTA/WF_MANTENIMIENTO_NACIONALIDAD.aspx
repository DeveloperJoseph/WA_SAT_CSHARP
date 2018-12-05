<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MANTENIMIENTO_NACIONALIDAD.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MANTENIMIENTO_NACIONALIDAD" %>

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
    <title>MANTENIMIENTO DE NACIONALIDADES</title>
</head>
<body class="bg-dark">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix text-white fondo-jS">
        <a class="navbar-brand text-dark text-white" href="WF_MENU_PRINCIPAL.aspx"><b>SISTEMA DE ASIGNACIÓN DE TAREAS - SAT</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="jumbotron bg-JStyle3 text-white">
            <h1>MANTENIMIENTO DE NACIONALIDADES</h1>
        </div>
    </div>
    <form id="form1" runat="server" class="form-control-sm">
        <div class="container">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="text" class="text-white">CODIGO *</label>
                    <asp:TextBox ID="txtNacionalidadID" runat="server" placeholder="Ingresar código"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text" class="text-white">DESCRIPCIÓN *</label>
                    <asp:TextBox ID="txtDescripcion" runat="server"
                        placeholder="Ingresar descripción" Width="300px"></asp:TextBox>
                    <br />
                </div>
                <asp:Button ID="ButtonRegister" runat="server" CssClass="btn bg-JStyle3 text-white"
                    Text="Registrar" OnClick="ButtonRegister_Click"  />

                &nbsp;<asp:Button ID="ButtonUpdate" runat="server" CssClass="btn bg-JStyle3 text-white"
                    Text="Actualizar" OnClick="ButtonUpdate_Click" />

                &nbsp;<asp:Button ID="ButtonDelete" runat="server" CssClass="btn bg-JStyle3 text-white"
                    Text="Eliminar" OnClick="ButtonDelete_Click"   />

                <br />
                <br />
            </div>
        </div>
        <div class="bg-light">
        <asp:GridView ID="GridViewNacionalidad" runat="server" CssClass="table table-sm  table-hover" AllowCustomPaging="True" HorizontalAlign="Center" PageSize="5">
        </asp:GridView>
            </div>
    </form>
</body>
</html>
