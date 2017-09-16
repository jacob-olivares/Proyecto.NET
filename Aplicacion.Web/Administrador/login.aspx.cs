using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion.Web.Administrador
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //se reciben los textbox
            string nombre = txtNombre.Text;
            string contrasena = txtContrasena.Text;

            //validacion de credenciales
            if (Session["login"] == null)
            {
                if (nombre.Equals("administrador") && contrasena.Equals("1234"))
                {
                    Session["admin"] = "admin";
                    Response.Redirect("index.aspx");
                }
                else
                {
                    lblRespuesta.Text = "Usuario y Contraseña no coinciden";
                }
            }


       
        }
    }
}