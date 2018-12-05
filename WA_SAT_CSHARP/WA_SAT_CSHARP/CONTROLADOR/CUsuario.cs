using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CUsuario
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarUsuario()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListaUsuario", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public DataTable listarEmpleado()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListaEmpleados", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public DataTable listarSupervisor()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListaSupervisores", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }




        public Boolean LoginSystem(int ID_CARGO, string EMAIL, string PWD)
        {
            using (SqlCommand cmd = new SqlCommand("LoginSystem", cnn))
            {
                Boolean exito = false;
                try
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID_CARGO", ID_CARGO.ToString());
                    cmd.Parameters.AddWithValue("@EMAIL", EMAIL.ToString());
                    cmd.Parameters.AddWithValue("@PWD", PWD.ToString());
                    cnn.Open();
                    SqlDataReader dR = cmd.ExecuteReader();
                    if (dR.Read())
                    {
                        exito = true;
                    }
                }
                catch (Exception)
                {
                    exito = false;
                    throw;
                }
                return exito;
            }

        }

        public void AgregarUsuarios(Model_tbl_Usuario u)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddUsuario", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_CARGO", u.ID_CARGO.ToString());
                cmd.Parameters.AddWithValue("@NOMBRE_USUARIO", u.NOMBRE_USUARIO);
                cmd.Parameters.AddWithValue("@APELLIDO_PATERNO", u.APELLIDO_PATERNO);
                cmd.Parameters.AddWithValue("@APELLIDO_MATERNO", u.APELLIDO_MATERNO);
                cmd.Parameters.AddWithValue("@FECHA_NACIMIENTO", u.FECHA_NACIMINENTO);
                cmd.Parameters.AddWithValue("@ID_ESTADOCIVIL", u.ID_ESTADOCIVIL.ToString());
                cmd.Parameters.AddWithValue("@ID_DOCUMENTO", u.ID_DOCUMENTO.ToString());
                cmd.Parameters.AddWithValue("@NRO_DOCUMENTO", u.NRO_DOCUMENTO);
                cmd.Parameters.AddWithValue("@ID_SEXO", u.ID_SEXO.ToString());
                cmd.Parameters.AddWithValue("@ID_NACIONALIDAD", u.ID_NACIONALIDAD.ToString());
                cmd.Parameters.AddWithValue("@DOMICILIO", u.DOMICILIO);
                cmd.Parameters.AddWithValue("@CONTACTO", u.CONTACTO);
                cmd.Parameters.AddWithValue("@EMAIL", u.EMAIL);
                cmd.Parameters.AddWithValue("@PWD", u.PWD);
                cnn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void UpdateUsuario(Model_tbl_Usuario u)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateUsuario", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_USUARIO", u.ID_USUARIO.ToString());
                cmd.Parameters.AddWithValue("@ID_CARGO", u.ID_CARGO.ToString());
                cmd.Parameters.AddWithValue("@NOMBRE_USUARIO", u.NOMBRE_USUARIO);
                cmd.Parameters.AddWithValue("@APELLIDO_PATERNO", u.APELLIDO_PATERNO);
                cmd.Parameters.AddWithValue("@APELLIDO_MATERNO", u.APELLIDO_MATERNO);
                cmd.Parameters.AddWithValue("@FECHA_NACIMIENTO", u.FECHA_NACIMINENTO);
                cmd.Parameters.AddWithValue("@ID_ESTADOCIVIL", u.ID_ESTADOCIVIL.ToString());
                cmd.Parameters.AddWithValue("@ID_DOCUMENTO", u.ID_DOCUMENTO.ToString());
                cmd.Parameters.AddWithValue("@NRO_DOCUMENTO", u.NRO_DOCUMENTO);
                cmd.Parameters.AddWithValue("@ID_SEXO", u.ID_SEXO.ToString());
                cmd.Parameters.AddWithValue("@ID_NACIONALIDAD", u.ID_NACIONALIDAD.ToString());
                cmd.Parameters.AddWithValue("@DOMICILIO", u.DOMICILIO);
                cmd.Parameters.AddWithValue("@CONTACTO", u.CONTACTO);
                cmd.Parameters.AddWithValue("@EMAIL", u.EMAIL);
                cmd.Parameters.AddWithValue("@PWD", u.PWD);
                cnn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void DeleteUsuario(Model_tbl_Usuario u)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteUsuario", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_USUARIO", u.ID_USUARIO.ToString());
                cnn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}