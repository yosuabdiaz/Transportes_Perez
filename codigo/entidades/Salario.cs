using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERP_EncomiendasTortuguero.Entidad
{
    public class Salario

    {
        public int SalarioID { get; set; }
        public int EmpleadoID { get; set; }
        public int Horas_trabajadas { get; set; }
        public int Pago_x_hora { get; set; }
        public DateTime Fecha_pago { get; set; }
        public int Horas_extra { get; set; }
        public int Pago_x_hora_extra { get; set; }


    }
}
