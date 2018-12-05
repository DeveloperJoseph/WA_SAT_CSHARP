using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_NACIONALIDAD : System.Web.UI.Page
    {
        CONTROLADOR.CNacionalidad objCNacionalidad = new CONTROLADOR.CNacionalidad();
        MNacionalidad mNacionalidad = new MNacionalidad();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                ListarNacionalidad();
            }
        }


        void ListarNacionalidad()
        {
            GridViewNacionalidad.DataSource = objCNacionalidad.listarNacionalidad();
            GridViewNacionalidad.DataBind();
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            mNacionalidad.NOMBRE_NACIONALIDAD = txtDescripcion.Text;
            objCNacionalidad.addNacionalidad(mNacionalidad);
            ListarNacionalidad();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            mNacionalidad.ID_NACIONALIDAD = Convert.ToInt32(txtNacionalidadID.Text);
            mNacionalidad.NOMBRE_NACIONALIDAD = txtDescripcion.Text;
            objCNacionalidad.updateNacionalidad(mNacionalidad);
            ListarNacionalidad();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            mNacionalidad.ID_NACIONALIDAD = Convert.ToInt32(txtNacionalidadID.Text);
            objCNacionalidad.deleteNacionalidad(mNacionalidad);
            ListarNacionalidad();
        }



    }
}