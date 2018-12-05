using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WA_SAT_CSHARP.MODELO
{
    public class Model_tbl_TareaUser
    {
        public int ID_TAREAUSER { get; set; }
        public int ID_SUPERVISOR { get; set; }
        public int ID_USUARIO { get; set; }
        public String FECHA_INICIO { get; set; }
        public String FECHA_FIN { get; set; }
        public String DESCRIPCION { get; set; }
    }
}