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
            // Obtener la fila seleccionada del GridView
            GridViewRow row = GridView_Usuarios.SelectedRow;

            // Extraer datos de la fila seleccionada
            string email = row.Cells[3].Text;

            // Nombre de la conexión de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);


            // Abrir la conexión y ejecutar el procedimiento almacenado
            conngym.Open();

            // Crear y configurar el comando
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Datos_Usuarios";
                
                cmd.Parameters.AddWithValue("@Email", email);
               
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Llenar los TextBox con los valores obtenidos
                    tbNombre.Text = reader["Nombre"].ToString();
                    tbaPaterno.Text = reader["APaterno"].ToString();
                    tbaMaterno.Text = reader["AMaterno"].ToString();
                    tbfNac.Text = reader["FechaNacimiento"].ToString();
                    tbEmail.Text = reader["Email"].ToString();
                    tbPassword.Text = reader["Contraseña"].ToString();
                    tbCelular.Text = reader["Celular"].ToString();
                    tbPeso.Text = reader["Peso"].ToString();
                    tbAltura.Text = reader["Altura"].ToString();
                    tbTipo.Text = reader["Tipo_Usuario"].ToString();
                }
            
            
                // Asegurarse de cerrar la conexión
                conngym.Close();
            
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
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
                cmd.CommandText = "Ins_Usuarios1";

                // Convertir la fecha
                DateTime fechaNacimiento;
                if (DateTime.TryParse(tbfNac.Text, out fechaNacimiento))
                {
                    cmd.Parameters.AddWithValue("@Nombre", tbNombre.Text);
                    cmd.Parameters.AddWithValue("@APaterno", tbaPaterno.Text);
                    cmd.Parameters.AddWithValue("@AMaterno", tbaMaterno.Text);
                    cmd.Parameters.AddWithValue("@FechaNacimiento", fechaNacimiento); // Usar la fecha convertida
                    cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
                    cmd.Parameters.AddWithValue("@Contraseña", tbPassword.Text);
                    cmd.Parameters.AddWithValue("@Celular", tbCelular.Text);
                    cmd.Parameters.AddWithValue("@Peso", tbPeso.Text);
                    cmd.Parameters.AddWithValue("@Altura", tbAltura.Text);
                    cmd.Parameters.AddWithValue("@Tipo_Usuario", tbTipo.Text);

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Cuenta resgistrada exitosamente');</script>");
                }
                Response.Redirect("Usuarios.aspx");
            }

            catch (SqlException ex)
            {
                // Verificar el número de error para detectar violaciones de clave única
                if (ex.Number == 2627 || ex.Number == 2601) // Violación de clave única o índice único
                {
                    // Detectar si el error es debido al email o al celular
                    if (ex.Message.Contains("Email"))
                    {
                        Response.Write("<script>alert('Correo electrónico ya registrado');</script>");
                    }
                    else if (ex.Message.Contains("Celular"))
                    {
                        Response.Write("<script>alert('El número de celular ya está registrado');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Número o email ya registrados');</script>");
                    }
                }
            }
            finally
            {
                conngym.Close();

            }
            LimpiarTextBoxes(this);
        }


        


        protected void LimpiarTextBoxes(Control parent)
        {
            foreach (Control control in parent.Controls)
            {
                if (control is TextBox)
                {
                    ((TextBox)control).Text = string.Empty;
                }
                else if (control.HasControls())
                {
                    LimpiarTextBoxes(control);
                }
            }
        }


        





        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            // Nombre de la conexión de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            // Creación del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            
            
                conngym.Open();
                cmd.Connection = conngym;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Upd_Usuarios";

                // Añadir los parámetros al comando
                cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
                cmd.Parameters.AddWithValue("@Nombre",  tbNombre.Text);
                cmd.Parameters.AddWithValue("@APaterno",  tbaPaterno.Text);
                cmd.Parameters.AddWithValue("@AMaterno",  tbaMaterno.Text);
                cmd.Parameters.AddWithValue("@Contraseña", tbPassword.Text);
                cmd.Parameters.AddWithValue("@Celular",  tbCelular.Text);
                cmd.Parameters.AddWithValue("@Peso",  tbPeso.Text);
                cmd.Parameters.AddWithValue("@Altura",  tbAltura.Text);
                cmd.Parameters.AddWithValue("@Tipo_Usuario",  tbTipo.Text);
                
                // Ejecutar el comando
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    Response.Write("<script>alert('Usuario actualizado');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No se encontró el usuario');</script>");
                }
            
            
                conngym.Close();
            
            
            LimpiarTextBoxes(this);
        }




        

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            // Nombre de la conexión de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            // Creación del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            // Obtener la fila seleccionada del GridView
            GridViewRow row = GridView_Usuarios.SelectedRow;

            // Extraer el email de la fila seleccionada (asegúrate de que el índice es correcto)
            string email = row.Cells[3].Text; // Ajusta el índice según la columna del email en tu GridView




            conngym.Open();
            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Del_Usuarios";
            cmd.Parameters.AddWithValue("@Email", tbEmail.Text);



            // Ejecutar el comando
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Usuario Eliminado');</script>");
            }
            else
            {
                Response.Write("<script>alert('No se encontró el usuario');</script>");
            }


            conngym.Close();

            llenarGrid();


            LimpiarTextBoxes(this);

        }
    }
}