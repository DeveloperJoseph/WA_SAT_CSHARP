using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_SEXO : System.Web.UI.Page
    {
        CONTROLADOR.CSexo objCSexo = new CONTROLADOR.CSexo();
        MSexo mSexo = new MSexo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                ListarSexo();
            }
        }

        void ListarSexo()
        {
            GridViewSexo.DataSource = objCSexo.listarSexo();
            GridViewSexo.DataBind();
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            mSexo.DESCRIPCION = txtDescripcion.Text;
            objCSexo.addSexo(mSexo);
            ListarSexo();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            mSexo.ID_SEXO = Convert.ToInt32(txtSexoID.Text);
            mSexo.DESCRIPCION = txtDescripcion.Text;
            objCSexo.updateSexo(mSexo);
            ListarSexo();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            mSexo.ID_SEXO = Convert.ToInt32(txtSexoID.Text);
            objCSexo.DeleteSexo(mSexo);
            ListarSexo();
        }
    }
}