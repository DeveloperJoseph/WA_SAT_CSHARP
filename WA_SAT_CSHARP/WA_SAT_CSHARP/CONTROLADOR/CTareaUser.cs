using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CTareaUser
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable ListarTareaUser()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListTareaUser", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
            return dT;
        }

        public DataTable ListarPorCodigoUser(int codigo)
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListTareaPorCodigoUser", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.SelectCommand.Parameters.AddWithValue("@ID_USUARIO", codigo.ToString());
                dA.Fill(dT);
            }
            cnn.Close();
            return dT;
        }
    
        public void AddTareaUser(Model_tbl_TareaUser mTareaUser)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddTareaUser",cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_SUPERVISOR", mTareaUser.ID_SUPERVISOR);
                cmd.Parameters.AddWithValue("@ID_USUARIO", mTareaUser.ID_USUARIO);
                cmd.Parameters.AddWithValue("@FECHA_INICIO", mTareaUser.FECHA_INICIO);
                cmd.Parameters.AddWithValue("@FECHA_FIN", mTareaUser.FECHA_FIN);
                cmd.Parameters.AddWithValue("@DESCRIPCION", mTareaUser.DESCRIPCION);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();

            }
        }
    
    }
}