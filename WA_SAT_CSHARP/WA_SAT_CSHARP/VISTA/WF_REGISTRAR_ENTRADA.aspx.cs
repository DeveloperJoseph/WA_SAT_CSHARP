﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_REGISTRAR_ENTRADA : System.Web.UI.Page
    {
        CONTROLADOR.CIngresoAndSalida objCIngresoAndSalida = new CONTROLADOR.CIngresoAndSalida();
        MRegistroIngreso objRI = new MRegistroIngreso();
        String mensaje;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
               
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Boolean success = validarCamposRegistrarEntrada();

            if (success.Equals(true))
            {
                objRI.ID_USUARIO = Convert.ToInt32(txtUsuarioID.Text);
                objCIngresoAndSalida.RegistroIngreso(objRI);
                mensaje = "Registro de ingreso satisfactorio.";
                LabelMensaje.Text = mensaje;
            }
        }

        Boolean validarCamposRegistrarEntrada()
        {
            if (this.txtUsuarioID.Text.Equals(""))
            {
                mensaje = "Ingresar tu código de usuario (campo obligatorio).";
                LabelMensaje.Text = mensaje;
                return false;
            }
            return true;
        }
    
    
    }
}