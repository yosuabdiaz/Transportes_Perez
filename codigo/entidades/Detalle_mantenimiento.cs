using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Detalle_mantenimiento
    {
        public int Detalle_mantenimientoID { get; set; }
        public int MantenimientoID { get; set; }
        public int Tipo_mantenimientoID { get; set; }
        public String Descripcion { get; set; }
        public decimal Monto { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public String Calificacion { get; set; }
    }
}
