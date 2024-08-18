using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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


            if (conngym.State == 0)
            {
                //apertura de la conexión
                conngym.Open();
            }

            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Ins_Usuarios2";
            cmd.Parameters.AddWithValue("@Nombre", nombre.Text);
            cmd.Parameters.AddWithValue("@APaterno", apaterno.Text);
            cmd.Parameters.AddWithValue("@AMaterno", amaterno.Text);
            cmd.Parameters.AddWithValue("@FechaNacimiento", fechanac.Text);
            cmd.Parameters.AddWithValue("@Email", email.Text);
            cmd.Parameters.AddWithValue("@Contraseña", pass.Text);
            cmd.Parameters.AddWithValue("@Celular", cel.Text);
            cmd.Parameters.AddWithValue("@Peso", peso.Text);
            cmd.Parameters.AddWithValue("@Altura", altura.Text);
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);


            lbmensaje.Text = "Cuenta creada";
            conngym.Close();
        }
    }
}