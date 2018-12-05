using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_ESTADOCIVIL : System.Web.UI.Page
    {
        CONTROLADOR.CEstadoCivil objEstadoCivil = new CONTROLADOR.CEstadoCivil();
        MEstadoCivil mEC = new MEstadoCivil();
 
        protected void Page_Load(object sender, EventArgs e)
        {
           if(IsPostBack==false)
           {
               ListarEstadoCivil();
           }
        }

        void ListarEstadoCivil()
        {
            GridViewEstadoCivil.DataSource = objEstadoCivil.listarEstadoCivil();
            GridViewEstadoCivil.DataBind();
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            mEC.DESCRIPCION = txtDescripcion.Text;
            objEstadoCivil.addEstadoCivil(mEC);
            ListarEstadoCivil();
   
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            mEC.ID_ESTADOCIVIL = Convert.ToInt32(txtEstadoCivilID.Text);
            mEC.DESCRIPCION = txtDescripcion.Text;
            objEstadoCivil.updatedEstadoCivil(mEC);
            ListarEstadoCivil();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            mEC.ID_ESTADOCIVIL = Convert.ToInt32(txtEstadoCivilID.Text);
            objEstadoCivil.deletedEstadoCivil(mEC);
            ListarEstadoCivil();
        }
    }
}