using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Distribuidor 
    {
        public int DistribuidorID { get; set; }
        public String Razon_comercial { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public String Cedula_juridica { get; set; }
        public String Razon_Social { get; set; }
        public Boolean Habitual { get; set; }
        public int DireccionID { get; set; }



    }
}
