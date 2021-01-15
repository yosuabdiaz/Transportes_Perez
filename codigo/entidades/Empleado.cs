using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Empleado
    {
        public int EmpleadoID { get; set; }
        public String Nombre { get; set; }
        public String Apellido1 { get; set; }
        public String Apellido2 { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public int tipo_empleadoID { get; set; }
        public DateTime fecha_inicio { get; set; }

    }
}
