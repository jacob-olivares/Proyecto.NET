using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;
namespace Aplicacion.Web.Administrador.formularios.automovil
{
    public partial class modificarAutoaspx : System.Web.UI.Page
    {
        protected void Page_Load(object senders, EventArgs e)
        {
            List<Automovil> automoviles = new List<Automovil>();
            automoviles = (List<Automovil>)Session["lista_autos"];

            if (Session["admin"] != null)
            {
                try
                {
                    for (int i = 0; i < automoviles.Count; i++)
                    {
                        TableRow tr = new TableRow();
                        tabla.Rows.Add(tr);

                        TableCell tcell = new TableCell();
                        tcell.Text = automoviles[i].Id.ToString();
                        tr.Cells.Add(tcell);

                        TableCell tcell1 = new TableCell();
                        tcell1.Text = automoviles[i].Modelo;
                        tr.Cells.Add(tcell1);

                        TableCell tcell2 = new TableCell();
                        tcell2.Text = automoviles[i].Marca;
                        tr.Cells.Add(tcell2);

                        TableCell tcell3 = new TableCell();
                        tcell3.Text = automoviles[i].Categoria;
                        tr.Cells.Add(tcell3);

                        TableCell tcell4 = new TableCell();
                        tcell4.Text = automoviles[i].TipoCombustible;
                        tr.Cells.Add(tcell4);

                        TableCell tcell5 = new TableCell();
                        Button button = new Button();
                        button.ID = automoviles[i].Id.ToString();
                        button.Text = "Modificar";
                        tcell5.Controls.Add(button);
                        tr.Cells.Add(tcell5);

                        button.Click += (sender, args) => Response.Redirect("modificar.aspx?Id="+button.ID.ToString());
                    }
                }
                catch (NullReferenceException ne)
                {
                    Response.Write("No hay automoviles en la lista. " + ne.Message);
                }

            }
        }
    }
}