using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_REGISTRO_ENTRADA : System.Web.UI.Page
    {
        CONTROLADOR.CIngresoAndSalida objCIngresoAndSalida = new CONTROLADOR.CIngresoAndSalida();
        MRegistroSalida mRS = new MRegistroSalida();
        String mensaje;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Boolean success = validarCamposRegistrarSalida();
            if(success.Equals(true))
            {
                mRS.ID_USUARIO = Convert.ToInt32(txtUsuarioID.Text);
                objCIngresoAndSalida.RegistroSalida(mRS);
                mensaje = "Registro de salida satisfactorio.";
                LabelMensaje.Text = mensaje;
            }
        }


        Boolean validarCamposRegistrarSalida()
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