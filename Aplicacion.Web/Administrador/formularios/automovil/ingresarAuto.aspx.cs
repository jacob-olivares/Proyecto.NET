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
            string marca = txtMarca.Text;
            string modelo = txtModelo.Text;
            string categoria = ddlcategoria.SelectedValue;
            string tipoCom = tipoCombustible.SelectedValue;
            string desc = txtDesc.Text;

            //booleano para evaluar combobox's
            Boolean tiene_error = false;

            //Lista de automoviles
            List<Automovil> listaAutomoviles = new List<Automovil>();

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
                listaAutomoviles.Add(automovil);

                //Redirijo a la pagina y mando mensaje
                Response.Redirect("ingresarAuto.aspx");
                lblRespuesta.Text = "Agregado Correctamente";
            }

            //Guardo en una sesion la lista de los automoviles
            Session["lista_autos"] = listaAutomoviles;


        }
    }
}