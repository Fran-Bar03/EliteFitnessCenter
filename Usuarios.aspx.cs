using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.ConstrainedExecution;


namespace EliteFitnessCenter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //Creacion de un nuevo objeto de conexión para la base de datos con sus respectivos parámetros
        string ConexionGym = "user id=sa; password=uts; server=.; database=Gimnasio";

        protected void Page_Load(object sender, EventArgs e)

        {
            llenarGrid();
        }

        protected void DropDownList_Filtro_SelectedIndexChanged(object sender, EventArgs e)
        {
            int tipoSeleccionado = int.Parse(DropDownList_Filtro.SelectedValue);
            CargarUsuarios(tipoSeleccionado);

            int todosSeleccionado = int.Parse(DropDownList_Filtro.SelectedValue);
            if (todosSeleccionado == 0)
            {
                LlamarStoredProcedureTodos();
            }
            else if (tipoSeleccionado == 1)
            {
                LlamarStoredProcedureTipo1();
            }
            else if (tipoSeleccionado == 2)
            {
                LlamarStoredProcedureTipo2();
            }
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
            cmd.CommandText = "Join_Usuarios";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }




        //Método para mostrar la infromación en el grid según la opción que elijamos 
        private void CargarUsuarios(int Tipo_Usuario)
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
            cmd.CommandText = "Join_Usuarios";

            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }




        //Método para llamar a un SP diferente en caso de seleccionar todos en el filtro
        private void LlamarStoredProcedureTodos()
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
            cmd.CommandText = "Join_Usuarios";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }

        private void LlamarStoredProcedureTipo1()
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
            cmd.CommandText = "Usuarios_Tipo1";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }

        private void LlamarStoredProcedureTipo2()
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
            cmd.CommandText = "Usuarios_Tipo2";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }
        protected void GridView_Usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}