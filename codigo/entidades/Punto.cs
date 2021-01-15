using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Punto

    {
        public int PuntoID { get; set; }
        public int DireccionID { get; set; }
        public String Descripcion { get; set; }
        public decimal latitud { get; set; }
        public decimal longitud { get; set; }

        public decimal altitud { get; set; }
        public Boolean es_inicio { get; set; }
        public Boolean es_final { get; set; }
    }
}
