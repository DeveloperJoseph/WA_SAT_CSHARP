<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MANTENIMIENTO_USUARIO.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MANTENIMIENTO_USUARIO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link href="../RECURSOS/Content/Bootstrap/CssJoseph.css" rel="stylesheet" />
          <style>
            .fondo-jS {
                background: url('../RECURSOS/Imagenes/fondo.png');
                 width: 100%;
                background-repeat: no-repeat;
                background-size: 100%;
            }
    </style>
    <title>MANTENIMIENTO DE USUARIO</title>
</head>
<body class="">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix text-white fondo-jS">
        <a class="navbar-brand text-dark text-white" href="WF_MENU_PRINCIPAL.aspx"><b>SAT - INTRANET</b></a>
    </nav>
    <br />
    <br />
        <br />
    <br />
    <div class="container">
        <div class="jumbotron bg-danger text-white">
            <h1>MANTENIMIENTO DE USUARIO</h1>
        </div>
    </div>
    <form id="form1" runat="server" class="form-control-sm">
        <div class="container">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="text">USUARIO</label>
                    <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresar código usuario"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">CARGO</label>
                    <asp:DropDownList ID="DropDownListCargo" runat="server"></asp:DropDownList>
                    &nbsp;<br />
                </div>
                <div class="form-group">
                    <label for="text">NOMBRES</label>
                    <asp:TextBox ID="txtNombres" runat="server"
                        placeholder="Ingresar nombres" Width="300px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">APELLIDO PATERNO</label>
                    <asp:TextBox ID="txtApellidoPaterno" runat="server"
                        placeholder="Ingresar apellido paterno" Width="300px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">APELLIDO MATERNO</label>
                    <asp:TextBox ID="txtApellidoMaterno" runat="server"
                        placeholder="Ingresar apellido materno" Width="300px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">FECHA NACIMIENTO</label>
                    <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">ESTADO CIVIL</label>
                    <asp:DropDownList ID="DropDownListEstadoCivil" runat="server"></asp:DropDownList>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">TIPO DOCUMENTO</label>
                    <asp:DropDownList ID="DropDownListTypeDocument" runat="server"></asp:DropDownList>
                    <asp:TextBox ID="txtNroDocument" runat="server"
                        placeholder="Ingresar número de documento" Width="250px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">SEXO</label>
                    <asp:DropDownList ID="DropDownListSexo" runat="server"></asp:DropDownList>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">NACIONALIDAD</label>
                    <asp:DropDownList ID="DropDownListNacionalidad" runat="server"></asp:DropDownList>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">DOMICILIO</label>
                    <asp:TextBox ID="txtDomicilio" runat="server" TextMode="MultiLine"
                        placeholder="Ingresar domicilio (Solo 200 caracteres)"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">CONTACTO</label>
                    <asp:TextBox ID="txtContacto" runat="server" TextMode="Number"
                        placeholder="Ingresar contacto" Width="200px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">EMAIL</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"
                        placeholder="Ingresar email" Width="250px"></asp:TextBox>
                    <br />
                </div>
                <div class="form-group">
                    <label for="text">PASSWORD</label>
                    <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"
                        placeholder="Ingresar password" Width="250px"></asp:TextBox>
                    <br />
                </div>
                <asp:Button ID="ButtonRegister" runat="server" CssClass="btn btn-danger"
                    Text="Registrar" OnClick="ButtonRegister_Click" />

                   &nbsp;<asp:Button ID="ButtonUpdate" runat="server" CssClass="btn btn-danger"
                    Text="Actualizar" OnClick="ButtonUpdate_Click"  />

                         &nbsp;<asp:Button ID="ButtonDelete" runat="server" CssClass="btn btn-danger"
                    Text="Eliminar" OnClick="ButtonDelete_Click" />

                <br />
                <br />
            </div>
        </div>
              
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-sm  table-hover  table-responsive" AllowCustomPaging="True" HorizontalAlign="Center" PageSize="5">
        </asp:GridView>


    </form>
</body>
</html>
