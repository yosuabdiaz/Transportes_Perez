using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Departemento_x_bodega
    {
        public int LineaID { get; set; }
        public int BodegaID { get; set; } //el tipo de dato decimal es equivalente en sql al tipo de dato numeric
        public int DepartamentoID { get; set; }
    }
}
