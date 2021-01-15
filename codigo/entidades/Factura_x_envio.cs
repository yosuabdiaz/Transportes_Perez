using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Factura_x_envio
    {
        public int LineaID { get; set; }
        public int EnvioID { get; set; }
        public int FacturaID { get; set; }
    }
}
