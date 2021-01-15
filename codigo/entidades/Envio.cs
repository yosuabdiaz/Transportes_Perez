using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Envio
    {
        public int EnvioID { get; set; }
        public int Tipo_envioID { get; set; }
        public DateTime fecha { get; set; }
        public int RutaID { get; set; }
        public int VehiculoID { get; set; }
        public int EmpleadoID { get; set; }
        public int BodegaID { get; set; }
        public String Estado { get; set; }
        public int Ganancia { get; set; }

    }
}
