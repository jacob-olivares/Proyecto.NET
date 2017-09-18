using System;
using System.Collections.Generic;
using System.Text;

namespace BibliotecaDeClases.Entidades
{
    public class Automovil
    {
        private string marca, modelo, descripcion, categoria, tipoCombustible;
        private int id;
        private static int autoIncremento = 0;

        public Automovil(string marca, string modelo, string descripcion, string categoria, string tipoCombustible)
        {
            autoIncremento++;
            Id = autoIncremento;
            Marca = marca;
            Modelo = modelo;
            Descripcion = descripcion;
            Categoria = categoria;
            TipoCombustible = tipoCombustible;
        }

        #region accesadores_mutadores
        public string Marca
        {
            get { return marca; }
            set { marca = value; }
        }
        public string Modelo
        {
            get { return modelo; }
            set { modelo = value; }
        }
        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
        public string Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }
        public string TipoCombustible
        {
            get { return tipoCombustible; }
            set { tipoCombustible = value; }
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        #endregion

    }
}
