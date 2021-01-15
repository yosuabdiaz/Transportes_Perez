using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Convenio
    {
        public int ConvenioId { get; set; }
        public int Id_cliente { get; set; }
        public String Descripcion { get; set; }
        public decimal Monto { get; set; }

        public DateTime Fecha { get; set; }
        //public byte[] Fecha { get; set; }
        public bool Activo { get; set; }

    }
}
