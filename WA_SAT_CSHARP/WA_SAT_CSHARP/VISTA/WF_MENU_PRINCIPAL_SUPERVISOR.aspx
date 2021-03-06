﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MENU_PRINCIPAL_SUPERVISOR.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MENU_PRINCIPAL_SUPERVISOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link href="../RECURSOS/Content/Bootstrap/CssJoseph.css" rel="stylesheet" />
     <title>MENU PRINCIPAL - SUPERVISOR</title>

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
        <a class="navbar-brand text-dark" href="WF_MENU_PRINCIPAL_SUPERVISOR.aspx"><b>SAT - INTRANET</b></a>
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
                            <a href="WF_REGISTRAR_ENTRADA.aspx">REGISTRAR MI INGRESO</a>
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
                            <a href="WF_REGISTRO_SALIDA.aspx">REGISTRAR MI SALIDA</a>
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
        </div>
    </div>
</body>
</html>
