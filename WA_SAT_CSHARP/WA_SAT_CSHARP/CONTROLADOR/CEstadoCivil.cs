using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CEstadoCivil
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarEstadoCivil()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListarEstadoCivil", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public void addEstadoCivil(MEstadoCivil mEC)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddEstadoCivil", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DESCRIPCION", mEC.DESCRIPCION);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void updatedEstadoCivil(MEstadoCivil mEC)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateEstadoCivil", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_ESTADOCIVIL", mEC.ID_ESTADOCIVIL);
                cmd.Parameters.AddWithValue("@DESCRIPCION", mEC.DESCRIPCION);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void deletedEstadoCivil(MEstadoCivil mEC)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteEstadoCivil", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_ESTADOCIVIL", mEC.ID_ESTADOCIVIL);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }
    }
}