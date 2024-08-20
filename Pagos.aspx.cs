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
    public partial class Pagos : System.Web.UI.Page
    {
        //Creacion de un nuevo objeto de conexión para la base de datos con sus respectivos parámetros
        string ConexionGym = "user=sa; password=uts; server=.; database=Gimnasio";

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["user"];
            if (user == null) 
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Pagar_Click(object sender, EventArgs e)
        {
            //Nombre de la conexion de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            //creacion del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            //creacion del puente para insertar los registros en el datatable
            SqlDataAdapter adaptador = new SqlDataAdapter();

            //Creacion de nuestra tabla
            DataTable dataTable = new DataTable();


            //si la conexion no esta abierta
            if (conngym.State == 0)

            //Abrir la conexion
            {
                conngym.Open();
            }


            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Ins_DetPagos1";
            cmd.Parameters.AddWithValue("@Nombre_Titular", nombret.Text);
            cmd.Parameters.AddWithValue("@Numero_Tarjeta", ntarjeta.Text);
            cmd.Parameters.AddWithValue("@Monto", monto.Text);

            try
            {
                // Ejecución del comando
                cmd.ExecuteNonQuery();

                // Mostrar mensaje de éxito y redirigir al usuario
                string script = "alert('Pago exitoso'); window.location='Inicio.aspx';";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            catch (Exception ex)
            {
                // Manejo de errores (puedes personalizar este mensaje)
                string script = "alert('Ocurrió un error durante el pago: " + ex.Message + "');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
            finally
            {
                // Cerrar la conexión
                conngym.Close();
            }



        }

 
    }
}