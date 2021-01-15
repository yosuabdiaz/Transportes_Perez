using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Recoger

    {
        public int RecogerID { get; set; }
        public int DireccionID { get; set; }
        public int DistribucionID { get; set; }
        public int Bulto { get; set; }
        public int Costo { get; set; }
        public DateTime fecha { get; set; }
        public String estatus { get; set; }
    }
}
