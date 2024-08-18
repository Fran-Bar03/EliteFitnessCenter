using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteFitnessCenter
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cal_Click(object sender, EventArgs e)
        {
            double Altura = 0;
            double Peso = 0;

            // Convertir las entradas a double
            if (double.TryParse(altura.Text, out Altura) && double.TryParse(peso.Text, out Peso))
            {
                // Convertir altura de cm a metros
                Altura = Altura / 100;

                // Calcular IMC
                double imc = Peso / (Altura * Altura);

                // Determinar rango de IMC
                string rango;
                if (imc < 18.5)
                {
                    rango = "Bajo Peso";
                }
                else if (imc >= 18.5 && imc <= 24.9)
                {
                    rango = "Saludable";
                }
                else if (imc >= 25.0 && imc <= 29.9)
                {
                    rango = "Exceso de Peso";
                }
                else
                {
                    rango = "Obesidad";
                }

                // Mostrar el resultado en los controles Label
                Rimc.Text = $"Tu IMC es de {imc:F2}";
                Rrango.Text = rango;
            }

        }
    }
}