using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Vehiculo

    {
        public int VehiculoID { get; set; }
        public int Tipo_vehiculoID { get; set; }
        public int Matricula { get; set; }
        public String  estado{ get; set; }
        public int valor_fiscal { get; set; }
        public String Marca { get; set; }
        public String Modelo { get; set; }
        public Boolean Marchamo { get; set; }
        public Boolean Revision_tecnica { get; set; }
        public int Peso { get; set; }

    }
}
