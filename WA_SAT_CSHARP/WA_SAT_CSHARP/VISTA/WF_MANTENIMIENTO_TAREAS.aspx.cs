using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_TAREAS : System.Web.UI.Page
    {
        CONTROLADOR.CUsuario objCUsuario = new CONTROLADOR.CUsuario();
        CONTROLADOR.CTareaUser objCTareaUser = new CONTROLADOR.CTareaUser();

        Model_tbl_TareaUser mTareaUser = new Model_tbl_TareaUser();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                ListarEmpleados();
            }
        }


        void ListarTareas()
        {
            GridViewTareas.DataSource = objCTareaUser.ListarTareaUser();
            GridViewTareas.DataBind();
        }

       void ListarEmpleados()
        {
            DropDownListEmpleado.DataSource = objCUsuario.listarEmpleado();
            DropDownListEmpleado.DataTextField = "NOMBRE_USUARIO";
            DropDownListEmpleado.DataValueField = "ID_USUARIO";
            DropDownListEmpleado.DataBind();
        }

       protected void ButtonRegister_Click(object sender, EventArgs e)
       {
           mTareaUser.ID_SUPERVISOR = Convert.ToInt32(txtSupervisorID.Text);
           mTareaUser.ID_USUARIO = Convert.ToInt32(DropDownListEmpleado.SelectedValue.ToString());
           mTareaUser.FECHA_INICIO = txtFechaInicio.Text;
           mTareaUser.FECHA_FIN = txtFechaFin.Text;
           mTareaUser.DESCRIPCION = txtDescripcion.Text;
           objCTareaUser.AddTareaUser(mTareaUser);
           ListarTareas();
           
       }

       
    }
}