using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Producto
    {
        public int ProductoID { get; set; }
        public String Descripcion { get; set; }
        public int Costo_envio { get; set; }
    }
}
