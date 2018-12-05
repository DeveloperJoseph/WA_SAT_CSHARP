using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WA_SAT_CSHARP.MODELO
{
    public class Model_tbl_Usuario
    {
        public int ID_USUARIO { get; set; }
        public int ID_CARGO { get; set; }
        public String NOMBRE_USUARIO { get; set; }
        public String APELLIDO_PATERNO { get; set; }
        public String APELLIDO_MATERNO { get; set; }
        public String FECHA_NACIMINENTO { get; set; }
        public int ID_ESTADOCIVIL { get; set; }
        public int ID_DOCUMENTO { get; set; }
        public String NRO_DOCUMENTO { get; set; }
        public int ID_SEXO { get; set; }
        public int ID_NACIONALIDAD { get; set; }
        public String DOMICILIO { get; set; }
        public long CONTACTO { get; set; }
        public String EMAIL { get; set; }
        public String PWD { get; set; }
    }
}