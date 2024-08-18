using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics.Eventing.Reader;

namespace EliteFitnessCenter
{
    public partial class Registrarse : System.Web.UI.Page
    {
        string ConexionGym = "user=sa; password=uts; server=.; database=Gimnasio;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registar_Click(object sender, EventArgs e)
        {
            //Nombre de la conexion de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            //creacion del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            //creacion del puente para insertar los registros en el datatable
            SqlDataAdapter adaptador = new SqlDataAdapter();

            //Creacion de nuestra tabla
            DataTable dt = new DataTable();


            try
            {
                conngym.Open();
                cmd.Connection = conngym;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Ins_Usuarios2";

                // Convertir la fecha
                DateTime fechaNacimiento;
                if (DateTime.TryParse(fechanac.Text, out fechaNacimiento))
                {
                    cmd.Parameters.AddWithValue("@Nombre", nombre.Text);
                    cmd.Parameters.AddWithValue("@APaterno", apaterno.Text);
                    cmd.Parameters.AddWithValue("@AMaterno", amaterno.Text);
                    cmd.Parameters.AddWithValue("@FechaNacimiento", fechaNacimiento); // Usar la fecha convertida
                    cmd.Parameters.AddWithValue("@Email", email.Text);
                    cmd.Parameters.AddWithValue("@Contraseña", pass.Text);
                    cmd.Parameters.AddWithValue("@Celular", cel.Text);
                    cmd.Parameters.AddWithValue("@Peso", peso.Text);
                    cmd.Parameters.AddWithValue("@Altura", altura.Text);

                    cmd.ExecuteNonQuery();

                    lbmensaje.Text = "Cuenta creada";
                }
                else
                {
                    lbmensaje.Text = "Fecha de nacimiento no válida.";
                }
            }

            catch (SqlException ex)
            {
                // Verificar el número de error para detectar violaciones de clave única
                if (ex.Number == 2627 || ex.Number == 2601) // Violación de clave única o índice único
                {
                    // Detectar si el error es debido al email o al celular
                    if (ex.Message.Contains("Email"))
                    {
                        lbmensaje.Text = "Error: El correo electrónico ya está registrado.";
                    }
                    else if (ex.Message.Contains("Celular"))
                    {
                        lbmensaje.Text = "Error: El número de celular ya está registrado.";
                    }
                    else
                    {
                        lbmensaje.Text = "Error: Número o email ya registrados.";
                    }
                }
            }
            finally
            {
                conngym.Close();
            }
        }
    }
}