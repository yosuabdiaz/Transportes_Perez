using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Correo_empleado
    {
        public int CorreoId { get; set; }
        public int Id_empleado { get; set; }
        public String Descripcion { get; set; }
    }
}
