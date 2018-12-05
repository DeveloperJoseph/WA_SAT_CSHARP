<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MANTENIMIENTO_TAREAS.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MANTENIMIENTO_TAREAS" %>

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
    <title>MANTENIMIENTO DE TAREAS</title>
</head>
<body class="bg-dark">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix text-white fondo-jS">
        <a class="navbar-brand text-dark text-white" href="WF_MENU_PRINCIPAL.aspx"><b>SAT - INTRANET</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="jumbotron bg-primary text-white">
            <h1>MANTENIMIENTO DE TAREAS</h1>
        </div>
    </div>
    <form id="form1" runat="server" class="form-control-sm">
        <div class="container">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="text" class="text-white">CODIGO TAREA *</label>
                    <asp:TextBox ID="txtCodigoTarea" runat="server" placeholder="Ingresar código tarea" Width="300px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text" class="text-white">SUPERVISOR *</label>
                    <asp:TextBox ID="txtSupervisorID" runat="server" 
                        placeholder="Ingresar tu código de supervisor" Width="300px"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label for="text" class="text-white">EMPLEADO *</label>
                    <asp:DropDownList ID="DropDownListEmpleado" runat="server"></asp:DropDownList>
                </div>
                 <div class="form-group">
                    <label for="text" class="text-white">FECHA INICIO*</label>
                     <asp:TextBox ID="txtFechaInicio" runat="server" TextMode="DateTime"
                         placeholder="Ingresar fecha de inicio" Width="300px"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label for="text" class="text-white">FECHA FIN*</label>
                     <asp:TextBox ID="txtFechaFin" runat="server" TextMode="DateTime"
                         placeholder="Ingresar fecha de fin" Width="300px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="text" class="text-white">DESCRIPCIÓN*</label>
                     <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine"
                         placeholder="Ingresar un descripción(solo 200 caracteres)" Width="300px"></asp:TextBox>
                </div>
                <asp:Button ID="ButtonRegister" runat="server" CssClass="btn btn-primary"
                    Text="Registrar" OnClick="ButtonRegister_Click"   />

                &nbsp;<asp:Button ID="ButtonUpdate" runat="server" CssClass="btn btn-primary"
                    Text="Actualizar"  />

                &nbsp;<asp:Button ID="ButtonDelete" runat="server" CssClass="btn btn-primary"
                    Text="Eliminar"  />

                <br />
                <br />
            </div>
        </div>
        <div class="bg-light">
        <asp:GridView ID="GridViewTareas" runat="server" CssClass="table table-sm  table-hover" AllowCustomPaging="True" HorizontalAlign="Center" PageSize="5">
        </asp:GridView>
            </div>
    </form>
</body>
</html>
