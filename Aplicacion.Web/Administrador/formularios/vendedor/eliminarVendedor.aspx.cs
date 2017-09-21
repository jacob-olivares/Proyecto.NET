using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.vendedor
{
    public partial class eliminarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object senders, EventArgs e)
        {
            List<Vendedor> vendedores = (List<Vendedor>)Session["lista_vendedores"];

            for (int i = 0; i < vendedores.Count; i++)
            {
                TableRow tr = new TableRow();
                tabla.Rows.Add(tr);

                TableCell tcell = new TableCell();
                tcell.Text = vendedores[i].Rut;
                tr.Cells.Add(tcell);

                TableCell tcell1 = new TableCell();
                tcell1.Text = vendedores[i].Nombre;
                tr.Cells.Add(tcell1);

                TableCell tcell2 = new TableCell();
                tcell2.Text = vendedores[i].Apellido;
                tr.Cells.Add(tcell2);

                TableCell tcell3 = new TableCell();
                tcell3.Text = vendedores[i].Direccion;
                tr.Cells.Add(tcell3);

                TableCell tcell4 = new TableCell();
                tcell4.Text = vendedores[i].Genero;
                tr.Cells.Add(tcell4);

                TableCell tcell5 = new TableCell();
                tcell5.Text = vendedores[i].FechaNacimiento.ToShortDateString();
                tr.Cells.Add(tcell5);

                TableCell tcell6 = new TableCell();
                Button boton = new Button();
                boton.ID = vendedores[i].Rut;
                boton.Text = "Despedir";
                tcell6.Controls.Add(boton);
                boton.Click += (sender, args) => Response.Redirect("eliminar.aspx?Rut=" + boton.ID);
                tr.Cells.Add(tcell6);
            }
        }
        
    }
}