using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CCargo
    {

        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public DataTable listarCargo()
        {
            using (SqlDataAdapter dA = new SqlDataAdapter("sp_ListarCargo", cnn))
            {
                dA.SelectCommand.CommandType = CommandType.StoredProcedure;
                dA.Fill(dT);
            }
           return dT;
        }

        public void addCargo(Model_tbl_Cargo objCargo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_AddCargo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NOMBRE_CARGO", objCargo.NOMBRE_CARGO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


        public void updateCargo(Model_tbl_Cargo objCargo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_UpdateCargo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_CARGO", objCargo.ID_CARGO);
                cmd.Parameters.AddWithValue("@NOMBRE_CARGO", objCargo.NOMBRE_CARGO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


        public void deleteCargo(Model_tbl_Cargo objCargo)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DeleteCargo", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_CARGO", objCargo.ID_CARGO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }


    }
}