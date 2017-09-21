using System;
using System.Collections.Generic;
using System.Text;

namespace BibliotecaDeClases.Entidades
{
    public class Vendedor
    {
        string rut, nombre, apellido, direccion, genero;
        DateTime fechaNacimiento;


        public Vendedor(string rut, string nombre, string apellido, string direccion, string genero, DateTime fechaNacimiento)
        {
            Rut = rut;
            Nombre = nombre;
            Apellido = apellido;
            Direccion = direccion;
            Genero = genero;
            FechaNacimiento = fechaNacimiento;
        }

        public String Rut { get; set; }
        public String Nombre { get; set; }
        public String Apellido { get; set; }
        public String Direccion { get; set; }
        public String Genero { get; set; }
        public DateTime FechaNacimiento { get; set; }
    }
}
