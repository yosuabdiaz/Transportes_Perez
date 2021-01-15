using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Tipo_vehiculo

    {
        public int Tipo_vehiculoID { get; set; }
        public int Tipo_combustibleID { get; set; }
        public String Descripcion { get; set; }
        public int  eje { get; set; }
        public int pasajeros { get; set; }
        public Boolean congelador { get; set; }
    }
}
