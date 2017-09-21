using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.vendedor
{
    public partial class eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Vendedor> vendedores = (List<Vendedor>)Session["lista_vendedores"];
            string rut = Request.QueryString["Rut"];
            for (int i = 0; i < vendedores.Count; i++)
            {
                if (vendedores[i].Rut.Equals(rut))
                {
                    vendedores.RemoveAt(i);
                }
            }
            Response.Redirect("eliminarVendedor.aspx");
        }
    }
}