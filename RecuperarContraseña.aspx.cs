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
    public partial class RecuperarContraseña : System.Web.UI.Page
    {
        string ConexionGym = "user=sa; password=uts; server=.; database=Gimnasio";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbenviar_Click(object sender, EventArgs e)
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
            cmd.CommandText = "Ins_Mensajes";
            cmd.Parameters.AddWithValue("@Email", Eemail.Text);
            cmd.Parameters.AddWithValue("@Mensaje", Mensaje.Text);
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);


            Response.Redirect("NuevaContraseña.aspx");
        }
    }
}