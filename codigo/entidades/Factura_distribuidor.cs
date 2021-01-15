using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Factura_distribuidor
    {
        public int FacturaID { get; set; }
        public int DistribuidorID { get; set; }
        public int ClienteID { get; set; }
        public int Factura_electronica { get; set; }
        public int monto { get; set; }
        public DateTime fecha { get; set; }
        public int Bulto { get; set; }
        public int Ganancia { get; set; }

    }
}
