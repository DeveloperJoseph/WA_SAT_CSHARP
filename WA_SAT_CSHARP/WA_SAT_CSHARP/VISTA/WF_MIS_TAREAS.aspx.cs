using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MIS_TAREAS : System.Web.UI.Page
    {
        CONTROLADOR.CTareaUser objCTareaUser = new CONTROLADOR.CTareaUser();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

 
        protected void ButtonSearchTareas_Click(object sender, EventArgs e)
        {
            int codigo = Convert.ToInt32(txtCodigoID.Text);
            GridViewSearchTareas.DataSource = objCTareaUser.ListarPorCodigoUser(codigo);
            GridViewSearchTareas.DataBind();
        }
    }
}