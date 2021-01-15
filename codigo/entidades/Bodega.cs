using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Bodega
    {
        public int BodegaID { get; set; }
        public decimal Tamano { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public int Id_direccion { get; set; }
    }
}
