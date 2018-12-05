<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MENU_PRINCIPAL_EMPLEADO.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MENU_PRINCIPAL_EMPLEADO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
    <title>MENU PRINCIPAL - EMPLEADO</title>
        <style>
            .fondo-jS {
                background: url('../RECURSOS/Imagenes/fondo.png');
                 width: 100%;
                background-repeat: no-repeat;
                background-size: 100%;
            }
    </style>
</head>
<body class="bg-dark">
    <nav class="navbar navbar-inverse bg-dark navbar-dark affix fondo-jS">
        <a class="navbar-brand text-dark" href="WF_MENU_PRINCIPAL_EMPLEADO.aspx"><b>SISTEMA DE ASIGNACIÓN DE TAREAS - SAT</b></a>
    </nav>
    <br />
    <br />
    <br />
    <br />
   <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-danger text-center text-white">
                        <h2>REGISTRAR ENTRADA</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a class="btn btn-danger">REGISTRAR ENTRADA</a>
                        </div>
                        <div class="col-form-label">
                            <a>UPDATE USUARIO</a>
                        </div>
                        <div class="col-form-label">
                            <a>DELETE USUARIO</a>
                        </div>
                        <div class="col-form-label">
                            <a>LISTA DE USUARIOS</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-danger text-center text-white">
                        <h2>REGISTRAR SALIDA</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a>REGISTRAR TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a>UPDATE TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a>DELETE TAREA</a>
                        </div>
                        <div class="col-form-label">
                            <a>LISTA DE TAREAS</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="jumbotron jumbotron-fluid bg-success text-center text-white">
                        <h2>MIS TAREAS</h2>
                    </div>
                    <div class="card-body">
                        <div class="col-form-label">
                            <a href="WF_MIS_TAREAS.aspx"
                                class="col-form-label text-success">VER MIS TAREAS</a>
                        </div>
                        <div class="col-form-label">
                            <a>VER MIS TAREAS</a>
                        </div>
                        <div class="col-form-label">
                            <a>VER MIS TAREAS</a>
                        </div>
                        <div class="col-form-label">
                            <a>VER MIS TAREAS</a>
                        </div>
                    </div>
                </div>
            </div>
            </div>
       </div>
</body>
</html>
