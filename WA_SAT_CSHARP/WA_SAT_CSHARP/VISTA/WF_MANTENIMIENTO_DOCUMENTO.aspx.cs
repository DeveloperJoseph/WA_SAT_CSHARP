using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_DOCUMENTO : System.Web.UI.Page
    {
        CONTROLADOR.CDocumento objCDocumento = new CONTROLADOR.CDocumento();
        Model_tbl_Documento mDocumento = new Model_tbl_Documento();
        String mensaje;

        protected void Page_Load(object sender, EventArgs e)
        {
            ListarDocumentos();
        }


        void ListarDocumentos()
        {
            GridViewDocumento.DataSource = objCDocumento.listarDocumento();
            GridViewDocumento.DataBind();
        }

        
        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Boolean validar = validarCamposAgregar();
            if (validar.Equals(true))
            {
                mDocumento.Descripcion = txtDescripcion.Text;
                objCDocumento.addDocumento(mDocumento);
                mensaje = "* Documento nuevo registrado exitosamente.";
                LabelMensaje.Text = mensaje;
                ListarDocumentos();
            }
        }


        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            Boolean validar = validarCamposUpdate();

            if(validar.Equals(true))
            {
                mDocumento.IdDocumento = Convert.ToInt32(txtDocumentoID.Text);
                mDocumento.Descripcion = txtDescripcion.Text;
                objCDocumento.updateDocumento(mDocumento);
                mensaje = "* Documento actualizado correctamente.";
                LabelMensaje.Text = mensaje;
                ListarDocumentos();
            }
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Boolean valida = validarCamposDelete();
            if(valida.Equals(true))
            {
                mDocumento.IdDocumento = Convert.ToInt32(txtDocumentoID.Text);
                mensaje = "* Documento eliminado de la base de datos.";
                LabelMensaje.Text = mensaje;
                ListarDocumentos();
            }
        }


        Boolean validarCamposAgregar()
        {
            if (this.txtDescripcion.Text.Equals(""))
            {
                mensaje = "Ingresar descripcion de documento(campo obligatorio)";
                LabelMensaje.Text = mensaje;
                return false;
            }
            return true;
        }

        Boolean validarCamposUpdate()
        {
            if (this.txtDocumentoID.Text.Equals(""))
            {
                mensaje = "Ingresar codigo de documento(campo obligatorio)";
                LabelMensaje.Text = mensaje;
                return false;
            }else if(this.txtDescripcion.Text.Equals(""))
            {
                mensaje = "Ingresar descripcion de documento(campo obligatorio)";
                LabelMensaje.Text = mensaje;
                return false;
            }
            return true;
        }

        Boolean validarCamposDelete()
        {
            if (this.txtDocumentoID.Text.Equals(""))
            {
                mensaje = "Ingresar codigo de documento(campo obligatorio)";
                LabelMensaje.Text = mensaje;
                return false;
            }
            return true;
        }



    }
}