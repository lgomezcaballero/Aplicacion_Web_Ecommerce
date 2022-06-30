﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Aplicacion_Web_Ecommerce
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos = new List<Articulo>();
        ArticuloNegocio negocio = new ArticuloNegocio();

        //Esto es para el abm de paises
        public List<Pais> listaPaises = new List<Pais>();     
        PaisNegocio paisNegocio = new PaisNegocio();

        //Esto lo hago para el abm de provincias
        public List<Provincia> listaProvincias = new List<Provincia>();
        ProvinciaNegocio provincianegocio = new ProvinciaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            listaArticulos = negocio.listar();
            if (!IsPostBack)
                Session.Add("listaArticulos", listaArticulos);

            //Esto lo hago para guardar el pais en session 
            listaPaises = paisNegocio.listar();
            if (!IsPostBack)
                Session.Add("listapaises", listaPaises);

            //Esto lo hago para guardar el las provincias en session 
            listaProvincias = provincianegocio.listar();
            if (!IsPostBack)
                Session.Add("listaProvincias", listaProvincias);
        }
    }
}