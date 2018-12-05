<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_REGISTRO_ENTRADA.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_REGISTRO_ENTRADA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="../RECURSOS/Content/Bootstrap/bootstrap.css" rel="stylesheet" />
    <script src="../RECURSOS/Scripts/Bootstrap/bootstrap.js" type="text/javascript"></script>
    <script src="../RECURSOS/Scripts/Jquery/jquery-1.12.4.js" type="text/javascript"></script>
    <link href="../RECURSOS/Content/Bootstrap/CssJoseph.css" rel="stylesheet" />
    <title></title>
    <script>
        function MostrarHora() {
            var hora = new Date();
            var meridiano = "AM";
            if (hora.getHours() >= 12) {
                meridiano = "PM";
            }
            var hora_Completa = hora.getHours() + " : " + hora.getMinutes() + " : " + hora.getSeconds() + " " + meridiano;
            document.getElementById("hora-entrada").innerText = hora_Completa;
            setTimeout("MostrarHora()", 1000);
        }
    </script>
</head>
<body onload="MostrarHora()">
      <nav class="navbar navbar-inverse bg-dark navbar-dark affix fondo-jS">
        <a class="navbar-brand text-dark" href="WF_LOGIN.aspx"><b>SISTEMA DE ASIGNACIÓN DE TAREAS - SAT</b></a>
    </nav>
    <div class="container">
    <form runat="server">
        <div class="container">
            <div class="container-fluid">
                <div class="title-frm-regist_entrada">
                    <h1 id="hora-entrada">--:--:--</h1>
                </div>
                <div class="frm-entrada">
                    <h2 id="title-frm-entrada">REGISTRO ENTRADA</h2>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="CODIGO"></asp:TextBox>
                    &nbsp;
                <asp:Button ID="Button1" runat="server" Text="REGISTRAR INGRESO" />
                </div>
            </div>
        </div>
    </form>
        </div>
</body>
</html>
