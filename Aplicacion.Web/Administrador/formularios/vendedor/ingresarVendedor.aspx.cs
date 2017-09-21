using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.vendedor
{
    public partial class ingresarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            List<Vendedor> vendedores = new List<Vendedor>();
            

            string rut = Request.Form["txtRut"];
            string nombre = Request.Form["txtNombre"];
            string apellido = Request.Form["txtApellido"];
            string direccion = Request.Form["txtDireccion"];
            string genero = Request.Form["rBut"];
            DateTime fechaNacimiento = (DateTime)cFecha.SelectedDate;


            Vendedor vendedor = new Vendedor(rut, nombre, apellido, direccion, genero, fechaNacimiento);
            
            if (Session["lista_vendedores"] != null)
            {
                vendedores = (List<Vendedor>)Session["lista_vendedores"];
            }

            vendedores.Add(vendedor);
            Session["lista_vendedores"] = vendedores;
        }
    }
}