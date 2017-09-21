using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.vendedor
{
    public partial class buscarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            List<Vendedor> vendedores = (List<Vendedor>)Session["lista_vendedores"];
            string rut = Request.Form["txtRut"];



            for (int i = 0; i < vendedores.Count; i++)
            {
                if (vendedores[i].Rut.Equals(rut))
                {
                    tcell.Text = vendedores[i].Rut;
                    tcell1.Text = vendedores[i].Nombre;
                    tcell2.Text = vendedores[i].Apellido;
                    tcell3.Text = vendedores[i].Direccion;
                    tcell4.Text = vendedores[i].FechaNacimiento.ToShortDateString();
                    tcell5.Text = vendedores[i].Genero;
                }
            }
        }
    }
}