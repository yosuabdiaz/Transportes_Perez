using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Mantenimiento
    {
        public int MantenimientoID { get; set; }
        public int TallerID { get; set; }
        public int VehiculoID { get; set; }
        public DateTime fecha { get; set; }
        public int monto { get; set; }
        public String nota_general { get; set; }
    }
}
