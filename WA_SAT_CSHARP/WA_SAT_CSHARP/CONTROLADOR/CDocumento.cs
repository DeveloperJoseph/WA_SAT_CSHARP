 using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CDocumento
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarDocumento()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListarDocumento", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
             
            }
            return dT;
        }

        public void addDocumento(Model_tbl_Documento objDocumento)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddDocumento", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NOMBRE_DOCUMENTO", objDocumento.Descripcion);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


        public void updateDocumento(Model_tbl_Documento objDocumento)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateDocumento", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_DOCUMENTO", objDocumento.IdDocumento);
                cmd.Parameters.AddWithValue("@NOMBRE_DOCUMENTO", objDocumento.Descripcion);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


        public void deleteDocumento(Model_tbl_Documento objDocumento)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteDocumento", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_DOCUMENTO", objDocumento.IdDocumento);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

    }
}