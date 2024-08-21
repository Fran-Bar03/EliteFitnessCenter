using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EliteFitnessCenter
{
    public partial class Inicio : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["user"];
            if (user != null)
            {
                if (user.Tipo_Usuario != 1) // Si es cliente, oculta el panel
                {
                    Usuarios.Visible = false;
                    Aclase.Visible = false;
                }
                else  // Si es administrador, muestra el panel
                {
                    Usuarios.Visible = true;
                    Aclase.Visible=true;
                }
            }
            else 
            {
                Response.Redirect("Login.aspx");
                UsuariosLink.Visible= false;

                Usuarios.Visible= false;
                Aclase.Visible=false;
                Response.Redirect("Login.aspx");
                

            }
        }

        protected void cerrar_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");

        }
    }
}
