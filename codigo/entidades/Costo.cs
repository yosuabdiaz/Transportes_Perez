using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Costo
    {
        public int CostoID { get; set; }
        public int EnvioID { get; set; }
        public decimal Monto { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
    }
}
