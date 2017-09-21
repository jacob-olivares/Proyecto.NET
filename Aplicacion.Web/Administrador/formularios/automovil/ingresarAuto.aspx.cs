using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaDeClases;
using BibliotecaDeClases.Entidades;

namespace Aplicacion.Web.Administrador.formularios.automovil
{
    public partial class ingresarAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {

            //Recibo los parametros
            string marca = Request.Form["txtMarca"];
            string modelo = Request.Form["txtModelo"];
            string categoria = Request.Form["ddlcategoria"];
            string tipoCom = Request.Form["tipoCombustible"];
            string desc = Request.Form["txtDesc"];

            List<Automovil> listaAutomoviles = new List<Automovil>();

            //booleano para evaluar combobox's
            Boolean tiene_error = false;

            //validaciones extras, ademas de los combobox
            if (categoria.Equals("0"))
            {
                lblRespuesta.Text = "Seleccione categoria";
                tiene_error = true;
            }
            if (tipoCom.Equals("0"))
            {
                lblRespuesta.Text = "Seleccione tipo de combustible";
                tiene_error = true;
            }

            //Verifico que no contenga errores
            if (!tiene_error)
            {
                //Creo un automovil y lo guardo en una lista
                Automovil automovil = new Automovil(marca, modelo, desc, categoria, tipoCom);

                //Guardo en una sesion la lista de los automoviles
                if (Session["lista_autos"] != null)
                {
                    listaAutomoviles = (List<Automovil>) Session["lista_autos"];
                }

                listaAutomoviles.Add(automovil);

                Session["lista_autos"] = listaAutomoviles;
                //Redirijo a la pagina y mando mensaje
                Response.Redirect("ingresarAuto.aspx");
                lblRespuesta.Text = "Agregado Correctamente";

            }
        }
    }
}