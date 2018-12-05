<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MENU_PRINCIPAL.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MENU_PRINCIPAL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link href="../RECURSOS/Content/Bootstrap/CssJoseph.css" rel="stylesheet" />
    <style>
        .fondo-jS {
            background: url('../RECURSOS/Imagenes/fondo.png');
            width: 100%;
            background-repeat: no-repeat;
            background-size: 100%;
        }
    </style>
    <title>MENU PRINCIPAL - ADMINISTRADOR</title>
</head>
<body class="bg-dark">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix fondo-jS">
        <a class="navbar-brand text-dark" href="WF_MENU_PRINCIPAL.aspx"><b>SAT - INTRANET</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <div class="container w3-animate-left">
        <div class="row">
             <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-JStyle1 text-center text-white">
                        <h2>REGISTRAR INGRESO</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a>REGISTRAR MI INGRESO</a>
                        </div>
                        <div class="col-form-label">
                            <a>LISTA DE MIS INGRESOS</a>
                        </div>
                          <div class="col-form-label">
                            <a>-</a>
                        </div>
                          <div class="col-form-label">
                            <a>-</a>
                        </div>
                    </div>
                </div>
            </div>
         <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-JStyle1 text-center text-white">
                        <h2>REGISTRAR SALIDA</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a>REGISTRAR MI SALIDA</a>
                        </div>
                        <div class="col-form-label">
                            <a>LISTA DE MIS SALIDAS</a>
                        </div>
                          <div class="col-form-label">
                            <a>-</a>
                        </div>
                          <div class="col-form-label">
                            <a>-</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-danger text-center text-white">
                        <h2>USUARIOS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_USUARIO.aspx"
                                class="col-form-label text-danger">REGISTRAR USUARIO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_USUARIO.aspx"
                                class="col-form-label text-danger">UPDATE USUARIO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_USUARIO.aspx"
                                class="col-form-label text-danger">DELETE USUARIO</a>
                        </div>
                        <div class="col-form-label">
                            <a  href="WF_MANTENIMIENTO_USUARIO.aspx"
                                class="col-form-label text-danger">LISTA DE USUARIOS</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-danger text-center text-white">
                        <h2>TAREA USUARIOS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_TAREAS.aspx"
                                 class="col-form-label text-danger">REGISTRAR TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_TAREAS.aspx"
                                 class="col-form-label text-danger">UPDATE TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_TAREAS.aspx"
                                 class="col-form-label text-danger">DELETE TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_TAREAS.aspx"
                                 class="col-form-label text-danger">LISTA DE TAREAS</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-success text-center text-white">
                        <h2>CARGOS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_CARGO.aspx"
                                class="col-form-label text-success">REGISTRAR CARGO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_CARGO.aspx"
                                class="col-form-label text-success">UPDATE CARGO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_CARGO.aspx"
                                class="col-form-label text-success">DELETE CARGO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_CARGO.aspx"
                                class="col-form-label text-success">LISTA DE CARGO</a>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-success text-center text-white">
                        <h2>DOCUMENTOS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_DOCUMENTO.aspx"
                                class="col-form-label text-success">REGISTRAR DOCUMENTO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_DOCUMENTO.aspx"
                                class="col-form-label text-success">UPDATE DOCUMENTO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_DOCUMENTO.aspx"
                                class="col-form-label text-success">DELETE DOCUMENTO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_DOCUMENTO.aspx"
                                class="col-form-label text-success">LISTA DE DOCUMENTOS</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-primary text-center text-white">
                        <h2>ESTADO CIVIL</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a  href="WF_MANTENIMIENTO_ESTADOCIVIL.aspx"
                                class="col-form-label text-primary">REGISTRAR ESTADO CIVIL</a>
                        </div>
                        <div class="col-form-label">
                            <a  href="WF_MANTENIMIENTO_ESTADOCIVIL.aspx"
                                class="col-form-label text-primary">UPDATE ESTADO CIVIL</a>
                        </div>
                        <div class="col-form-label">
                            <a  href="WF_MANTENIMIENTO_ESTADOCIVIL.aspx"
                                class="col-form-label text-primary">DELETE ESTADO CIVIL</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_ESTADOCIVIL.aspx"
                                class="col-form-label text-primary">LISTA DE ESTADO CIVIL</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-primary text-center text-white">
                        <h2>SEXOS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_SEXO.aspx"
                                class="col-form-label text-primary">REGISTRAR SEXO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_SEXO.aspx"
                                class="col-form-label text-primary">UPDATE SEXO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_SEXO.aspx"
                                class="col-form-label text-primary">DELETE SEXO</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_SEXO.aspx"
                                class="col-form-label text-primary">LISTA DE SEXOS</a>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-JStyle3 text-center text-white">
                        <h2>NACIONALIDADES</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_NACIONALIDAD.aspx"
                                class="col-form-label text-primary">REGISTRAR NACIONALIDAD</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_NACIONALIDAD.aspx"
                                class="col-form-label text-primary">UPDATE NACIONALIDAD</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_NACIONALIDAD.aspx"
                                class="col-form-label text-primary">DELETE NACIONALIDAD</a>
                        </div>
                        <div class="col-form-label">
                            <a href="WF_MANTENIMIENTO_NACIONALIDAD.aspx"
                                class="col-form-label text-primary">LISTA DE NACIONALIDAD</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-JStyle2 text-center text-white">
                        <h2>REPORTES</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a>REGISTRAR REPORTE</a>
                        </div>
                        <div class="col-form-label">
                            <a>UPDATE REPORTE</a>
                        </div>
                        <div class="col-form-label">
                            <a>DELETE REPORTE</a>
                        </div>
                        <div class="col-form-label">
                            <a>LISTA DE REPORTE</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
