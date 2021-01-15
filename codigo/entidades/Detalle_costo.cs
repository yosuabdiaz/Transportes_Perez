using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Detalle_costo
    {
        public int Detalle_costo_ID { get; set; }
        public int CostoID { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public String descripcion{ get; set; }
        public decimal monto { get; set; }
        public DateTime fecha { get; set; }
        public Boolean pendiente { get; set; }

    }
}
