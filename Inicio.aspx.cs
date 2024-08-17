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
                    UsuariosLink.Visible = false;
                }
                else  // Si es administrador, muestra el panel
                {
                    UsuariosLink.Visible = true;
                }
            }
            else 
            {
                UsuariosLink.Visible= false;
            }
        }
    }
}
