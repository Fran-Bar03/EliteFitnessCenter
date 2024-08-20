using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EliteFitnessCenter
{
    public class Rpagos
    {
        private string nombre_titular;
        private string numero_tarjeta;
        private DateTime fecha_pago;

        public Rpagos(string nombre_titular, string numero_tarjeta, DateTime fecha_pago)
        {
            Nombre_Titular = nombre_titular;
            Numero_Tarjeta = numero_tarjeta;
            Fecha_Pago = fecha_pago;
        }

        public string Nombre_Titular { get => nombre_titular; set => nombre_titular = value; }

        public string Numero_Tarjeta { get => numero_tarjeta; set => numero_tarjeta = value; }

        public DateTime Fecha_Pago { get => fecha_pago; set => fecha_pago = value; }

    }
}