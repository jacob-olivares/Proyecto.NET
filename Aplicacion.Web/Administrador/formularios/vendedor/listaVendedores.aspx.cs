using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.vendedor
{
    public partial class listaVendedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Vendedor> ven = (List<Vendedor>)Session["lista_vendedores"];

            for (int i = 0; i < ven.Count; i++)
            {
                TableRow tr = new TableRow();
                tabla.Rows.Add(tr);

                TableCell tc = new TableCell();
                tc.Text = ven[i].Rut;
                tr.Cells.Add(tc);

                TableCell tc1 = new TableCell();
                tc1.Text = ven[i].Nombre;
                tr.Cells.Add(tc1);

                TableCell tc2 = new TableCell();
                tc2.Text = ven[i].Apellido;
                tr.Cells.Add(tc2);

                TableCell tc3 = new TableCell();
                tc3.Text = ven[i].Direccion;
                tr.Cells.Add(tc3);

                TableCell tc4 = new TableCell();
                tc4.Text = ven[i].FechaNacimiento.ToShortDateString();
                tr.Cells.Add(tc4);

                TableCell tc5 = new TableCell();
                tc5.Text = ven[i].Genero;
                tr.Cells.Add(tc5);
            }
        }
    }
}