using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Direccion
    {
        public int DireccionID { get; set; }
        public decimal CodigoID { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public String Descripcion { get; set; }
    }
}
