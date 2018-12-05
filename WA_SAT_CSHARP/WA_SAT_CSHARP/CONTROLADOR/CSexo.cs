using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CSexo
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarSexo()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListSexo", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public void addSexo(MSexo mSexo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_addSexo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DESCRIPCION", mSexo.DESCRIPCION);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void updateSexo(MSexo mSexo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateSexo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_SEXO", mSexo.ID_SEXO);
                cmd.Parameters.AddWithValue("@DESCRIPCION", mSexo.DESCRIPCION);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }
    
       
        public void DeleteSexo(MSexo mSexo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteSexo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_SEXO", mSexo.ID_SEXO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }
    }
}