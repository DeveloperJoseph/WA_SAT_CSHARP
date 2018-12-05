using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.VISTA
{
    public partial class WF_MANTENIMIENTO_USUARIO : System.Web.UI.Page
    {
        CONTROLADOR.CDocumento objDocumento = new CONTROLADOR.CDocumento();
        CONTROLADOR.CCargo objCargo = new CONTROLADOR.CCargo();
        CONTROLADOR.CUsuario objUsuario = new CONTROLADOR.CUsuario();
        CONTROLADOR.CEstadoCivil objEstadoCivil = new CONTROLADOR.CEstadoCivil();
        CONTROLADOR.CSexo objSexo = new CONTROLADOR.CSexo();
        CONTROLADOR.CNacionalidad objNacionalidad = new CONTROLADOR.CNacionalidad();

        Model_tbl_Usuario user = new Model_tbl_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                listarCargos();
                listarDocumentos();
                ListarSexos();
                ListarEstadoCivil();
                ListarNacionalidad();
                ListarUsuario();
            }
        }

        void ListarUsuario()
        {
            GridView1.DataSource = objUsuario.listarUsuario();
            GridView1.DataBind();
        }

        void ListarEstadoCivil()
        {
            DropDownListEstadoCivil.DataSource = objEstadoCivil.listarEstadoCivil();
            DropDownListEstadoCivil.DataTextField = "DESCRIPCION";
            DropDownListEstadoCivil.DataValueField = "ID_ESTADOCIVIL";
            DropDownListEstadoCivil.DataBind();
        }

        void ListarNacionalidad()
        {
            DropDownListNacionalidad.DataSource = objNacionalidad.listarNacionalidad();
            DropDownListNacionalidad.DataTextField = "NOMBRE_NACIONALIDAD";
            DropDownListNacionalidad.DataValueField = "ID_NACIONALIDAD";
            DropDownListNacionalidad.DataBind();
        }


        void ListarSexos()
        {
            DropDownListSexo.DataSource = objSexo.listarSexo();
            DropDownListSexo.DataTextField = "DESCRIPCION";
            DropDownListSexo.DataValueField = "ID_SEXO";
            DropDownListSexo.DataBind();
        }

        void listarDocumentos()
        {
            DropDownListTypeDocument.DataSource = objDocumento.listarDocumento();
            DropDownListTypeDocument.DataTextField = "NOMBRE_DOCUMENTO";
            DropDownListTypeDocument.DataValueField = "ID_DOCUMENTO";
            DropDownListTypeDocument.DataBind();
        }

        void listarCargos()
        {
            DropDownListCargo.DataSource = objCargo.listarCargo();
            DropDownListCargo.DataTextField = "NOMBRE_CARGO";
            DropDownListCargo.DataValueField = "ID_CARGO";
            DropDownListCargo.DataBind();
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            user.ID_CARGO = Convert.ToInt32(DropDownListCargo.SelectedValue.ToString());
            user.NOMBRE_USUARIO = txtNombres.Text;
            user.APELLIDO_PATERNO = txtApellidoPaterno.Text;
            user.APELLIDO_MATERNO = txtApellidoMaterno.Text;
            user.FECHA_NACIMINENTO = txtFechaNacimiento.Text;
            user.ID_ESTADOCIVIL = Convert.ToInt32(DropDownListEstadoCivil.SelectedValue.ToString());
            user.ID_DOCUMENTO = Convert.ToInt32(DropDownListTypeDocument.SelectedValue.ToString());
            user.NRO_DOCUMENTO = txtNroDocument.Text;
            user.ID_SEXO = Convert.ToInt32(DropDownListSexo.SelectedValue.ToString());
            user.ID_NACIONALIDAD = Convert.ToInt32(DropDownListNacionalidad.SelectedValue.ToString());
            user.DOMICILIO = txtDomicilio.Text;
            user.CONTACTO = Convert.ToInt64(txtContacto.Text);
            user.EMAIL = txtEmail.Text;
            user.PWD = TextPassword.Text;
            objUsuario.AgregarUsuarios(user);
            ListarUsuario();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            user.ID_USUARIO = Convert.ToInt32(txtUsuario.Text);
            user.ID_CARGO = Convert.ToInt32(DropDownListCargo.SelectedValue.ToString());
            user.NOMBRE_USUARIO = txtNombres.Text;
            user.APELLIDO_PATERNO = txtApellidoPaterno.Text;
            user.APELLIDO_MATERNO = txtApellidoMaterno.Text;
            user.FECHA_NACIMINENTO = txtFechaNacimiento.Text;
            user.ID_ESTADOCIVIL = Convert.ToInt32(DropDownListEstadoCivil.SelectedValue.ToString());
            user.ID_DOCUMENTO = Convert.ToInt32(DropDownListTypeDocument.SelectedValue.ToString());
            user.NRO_DOCUMENTO = txtNroDocument.Text;
            user.ID_SEXO = Convert.ToInt32(DropDownListSexo.SelectedValue.ToString());
            user.ID_NACIONALIDAD = Convert.ToInt32(DropDownListNacionalidad.SelectedValue.ToString());
            user.DOMICILIO = txtDomicilio.Text;
            user.CONTACTO = Convert.ToInt64(txtContacto.Text);
            user.EMAIL = txtEmail.Text;
            user.PWD = TextPassword.Text;
            objUsuario.UpdateUsuario(user);
            ListarUsuario();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            user.ID_USUARIO = Convert.ToInt32(txtUsuario.Text);
            objUsuario.DeleteUsuario(user);
            ListarUsuario();
        }

    }
}