using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_CARGO : System.Web.UI.Page
    {
        CONTROLADOR.CCargo objCargo = new CONTROLADOR.CCargo();
        Model_tbl_Cargo mCargo = new Model_tbl_Cargo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                ListarCargo();
            }
        
        }

        void ListarCargo()
        {
            GridViewCargo.DataSource = objCargo.listarCargo();
            GridViewCargo.DataBind();
        }


        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            mCargo.NOMBRE_CARGO = txtDescripcion.Text;
            objCargo.addCargo(mCargo);
            ListarCargo();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            mCargo.ID_CARGO = Convert.ToInt32(txtCargoID.Text);
            mCargo.NOMBRE_CARGO = txtDescripcion.Text;
            objCargo.updateCargo(mCargo);
            ListarCargo();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            mCargo.ID_CARGO = Convert.ToInt32(txtCargoID.Text);
            objCargo.deleteCargo(mCargo);
            ListarCargo();
        }
    }
}