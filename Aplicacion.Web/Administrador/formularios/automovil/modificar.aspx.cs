using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.automovil
{
    public partial class modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Id"]);

            List<Automovil> autos = (List<Automovil>)Session["lista_autos"];

            for (int i = 0; i < autos.Count; i++)
            {
                if(autos[i].Id == id)
                {
                    txtId.Text = autos[i].Id.ToString();
                    txtModelo.Text = autos[i].Modelo;
                    txtMarca.Text = autos[i].Marca;
                    ddlcategoria.SelectedValue = autos[i].Categoria;
                    tipoCombustible.SelectedValue = autos[i].TipoCombustible;
                    txtDesc.Text = autos[i].Descripcion;
                }
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Form["txtId"]);
            string modelo = Request.Form["txtModelo"];
            string marca = Request.Form["txtMarca"];
            string categoria = Request.Form["ddlCategoria"];
            string tipo = Request.Form["tipoCombustible"];

            List<Automovil> autos = (List<Automovil>)Session["lista_autos"];

            for (int i = 0; i < autos.Count; i++)
            {
                if(autos[i].Id == id)
                {
                    autos[i].Marca = marca;
                    autos[i].Modelo = modelo;
                    autos[i].Categoria = categoria;
                    autos[i].TipoCombustible = tipo;
                }
            }
            Response.Redirect("modificarAuto.aspx");

        }
    }
}