using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography.X509Certificates;
using System.Web.Services.Description;
using System.Text;
using EliteFitnessCenter;

namespace EliteFitnessCenter
{
    public partial class Login : System.Web.UI.Page
    {
        //Creacion de un nuevo objeto de conexión para la base de datos con sus respectivos parámetros
        string ConexionGym = "user id=sa; password=uts; server=.; database=Gimnasio";


        protected void Page_Load(object sender, EventArgs e)
        {
            //Creacion del inicio de sesion, y rediccionar al usuario a la pagina inicio en caso de ser diferente a nulo
            Usuario user = (Usuario)Session["user"];

            if (!IsPostBack)
            {
                // Cierra la sesión actual si el usuario regresa a la página de login
                Session.Clear();
                Session.Abandon();


            }

            else if (user != null)
            {
                Response.Redirect("Inicio.aspx");
            }
        }


        protected void Ingresar_Click(object sender, EventArgs e)
        {
            //Nombre de la conexion de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            //creacion del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            //creacion del puente para insertar los registros en el datatable
            SqlDataAdapter adaptador = new SqlDataAdapter();

            //Creacion de nuestra tabla
            DataTable dt = new DataTable();


            Lbmensaje.Text = "";

            if (conngym.State == 0)
            {
                //apertura de la conexión
                conngym.Open();
            }

            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Aut_Usuarios";
            cmd.Parameters.AddWithValue("@ID_Usuario", email.Text );
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                //Realiza la verificacion de la columna y filas en la BD
                Usuario user = new Usuario(dt.Rows[0].ItemArray[5].ToString(), dt.Rows[0].ItemArray[6].ToString(), Convert.ToInt32(dt.Rows[0].ItemArray[10]));
                
                //Para verificar si el email escrito esta en la BD
                if (email.Text == user.Email)
                {
                    if (pass.Text == user.Contraseña)
                    {
                        // Si la contrasena introducida es igual a la de BD, se abrira la sesion y lo mandara al inicio
                        Session["user"] = user;

                        Response.Redirect("Inicio.aspx");
                    }
                    
                    else
                    {
                        Lbmensaje.Text = "Contraseña incorrecta";
                    }
                }

                else
                {
                    Lbmensaje.Text = "Usuario no registrado";
                }

            }
            else
            {
                Lbmensaje.Text = "Usuario no registrado";
            }
            conngym.Close();

        }
    }
}