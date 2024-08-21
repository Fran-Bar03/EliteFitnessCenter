using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteFitnessCenter
{
    public partial class AgregarClase : System.Web.UI.Page
    {
        string ConexionGym = "user=sa; password=uts; server=.; database=Gimnasio;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registrar_Click(object sender, EventArgs e)
        {
            //Nombre de la conexion de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            //Creacion del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            //Creacion del puente para insertar los registros en el datatable
            SqlDataAdapter adaptador = new SqlDataAdapter();

            //creacion de nuestra tabla
            DataTable dt = new DataTable();


            if (conngym.State == 0) 
            {
                conngym.Open();
            }


            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Ins_Clases";
            //creo una variable para convertir el atributo dia
            DateTime diaclase;
            //lo que se almacene en el textbox dia, lo convierto y almaceno el valor en la variable creada
            DateTime.TryParse(dia.Text, out diaclase);

            cmd.Parameters.AddWithValue("@Dia", diaclase);
            cmd.Parameters.AddWithValue("@Nombre", nclase.Text);
            cmd.Parameters.AddWithValue("@Hora_Inicio", horai.Text);
            cmd.Parameters.AddWithValue("@Hora_Fin", horaf.Text);
            cmd.Parameters.AddWithValue("@Instructor", ninstructor.Text);
       
            cmd.ExecuteNonQuery();

            mensaje.Text = "Clase registrada";

            conngym.Close();
            



        }
    }
}