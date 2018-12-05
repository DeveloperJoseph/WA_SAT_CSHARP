using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CNacionalidad
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarNacionalidad()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListNacionalidad", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public void addNacionalidad(MNacionalidad mNacionalidad)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddNacionalidad", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NOMBRE_NACIONALIDAD", mNacionalidad.NOMBRE_NACIONALIDAD);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void updateNacionalidad(MNacionalidad mNacionalidad)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateNacionalidad", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_NACIONALIDAD", mNacionalidad.ID_NACIONALIDAD.ToString());
                cmd.Parameters.AddWithValue("@NOMBRE_NACIONALIDAD", mNacionalidad.NOMBRE_NACIONALIDAD);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void deleteNacionalidad(MNacionalidad mNacionalidad)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteNacionalidad", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_NACIONALIDAD", mNacionalidad.ID_NACIONALIDAD.ToString());
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


    }
}