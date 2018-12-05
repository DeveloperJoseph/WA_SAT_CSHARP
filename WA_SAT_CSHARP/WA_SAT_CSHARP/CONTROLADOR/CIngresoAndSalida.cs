using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WA_SAT_CSHARP.MODELO;

namespace WA_SAT_CSHARP.CONTROLADOR
{
    public class CIngresoAndSalida
    {
        SqlConnection cnn = new SqlConnection("Data Source=(local);DataBase=DBSatPraco;user='sa';pwd='whoami'");
        DataTable dT = new DataTable();

        public void RegistroIngreso(MRegistroIngreso mRI)
        {
            using (SqlCommand cmd = new SqlCommand("sp_RegistrarIngreso", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_USUARIO", mRI.ID_USUARIO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }

        public void RegistroSalida(MRegistroSalida mRS)
        {
            using (SqlCommand cmd = new SqlCommand("sp_RegistrarSalida", cnn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_USUARIO", mRS.ID_USUARIO);
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }
    }
}