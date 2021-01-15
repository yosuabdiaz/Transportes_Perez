using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Entrega_bodega
    {
        public int EmtregaID { get; set; }
        public int BodegaID { get; set; }
        public int Bulto { get; set; }
        public String Estatus { get; set; }
        public DateTime Fecha { get; set; }
    }
}
