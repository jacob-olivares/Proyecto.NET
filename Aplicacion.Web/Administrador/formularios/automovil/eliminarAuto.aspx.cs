using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.automovil
{
    public partial class eliminarAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Automovil> automoviles = new List<Automovil>();
            automoviles = (List<Automovil>)Session["lista_autos"];


            if (Session["admin"] != null)
            {
                foreach (Automovil auto in automoviles)
                {
                    TableRow trow = new TableRow();
                    tabla.Rows.Add(trow);

                    TableCell tcell = new TableCell();
                    tcell.Text = auto.Id.ToString();
                    trow.Cells.Add(tcell);

                    TableCell tcell1 = new TableCell();
                    tcell1.Text = auto.Modelo.ToString();
                    trow.Cells.Add(tcell1);

                    TableCell tcell2 = new TableCell();
                    tcell2.Text = auto.Marca.ToString();
                    trow.Cells.Add(tcell2);

                    TableCell tcell3 = new TableCell();
                    tcell3.Text = auto.Categoria.ToString();
                    trow.Cells.Add(tcell3);

                    TableCell tcell4 = new TableCell();
                    tcell4.Text = auto.TipoCombustible.ToString();
                    trow.Cells.Add(tcell4);
                }
            }

        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Form["txtId"]);
            List<Automovil> automoviles = new List<Automovil>();
            automoviles = (List<Automovil>)Session["lista_autos"];

            for(int i = 0; i<automoviles.Count; i++) 
            {
                if(automoviles[i].Id == id)
                {
                    automoviles.RemoveAt(i);
                    Response.Write("Se elimino correctamente");
                }
                else
                {
                    Response.Write("El ID no existe");
                }
            }
            Response.Redirect("eliminarAuto.aspx");

        }
    }
}