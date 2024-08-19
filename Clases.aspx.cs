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
    public partial class Clases : System.Web.UI.Page
    {
        string ConexionGym = "user=sa; password=uts; server=.; database=Gimnasio";
        protected void Page_Load(object sender, EventArgs e)
        {

            llenarGrid();
        }







        public void llenarGrid()
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
            cmd.CommandText = "Con_Clases";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Clases.DataSource = dt;
            GridView_Clases.DataBind();
            conngym.Close();
        }
    }
}