using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_LOGIN : System.Web.UI.Page
    {
        CONTROLADOR.CCargo objCargo = new CONTROLADOR.CCargo();
        CONTROLADOR.CUsuario objUsuario = new CONTROLADOR.CUsuario();
        String mensaje;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                ListarCargo();
            }
        }

        void ListarCargo()
        {
            DropDownListCargo.DataSource = objCargo.listarCargo();
            DropDownListCargo.DataTextField = "NOMBRE_CARGO";
            DropDownListCargo.DataValueField = "ID_CARGO";
            DropDownListCargo.DataBind();
        }


        protected void btnAcceder_Click(object sender, EventArgs e)
        {
           // Boolean validar = validarCampos();
           // if (validar.Equals(true))
            //{
                int ID_CARGO = Convert.ToInt32(DropDownListCargo.SelectedValue.ToString());
                string EMAIL = txtEmail.Text;
                string PASSWORD = txtPassword.Text;
                Boolean rpta = objUsuario.LoginSystem(ID_CARGO, EMAIL, PASSWORD);
                if (rpta.Equals(true))
                {
                    if (ID_CARGO == 1)
                    {
                        Response.Redirect("WF_MENU_PRINCIPAL.aspx", true);
                    }
                    else if (ID_CARGO == 2)
                    {
                        Response.Redirect("WF_MENU_PRINCIPAL_SUPERVISOR.aspx", true);
                    }
                    else if (ID_CARGO == 3)
                    {
                        Response.Redirect("WF_MENU_PRINCIPAL_EMPLEADO.aspx", true);
                    }

                }
                else
                {
                    mensaje = "Usuario/Password no existen";
                    LabelMensaje.Text = mensaje;
                }
           // }
            
        }
    }
}