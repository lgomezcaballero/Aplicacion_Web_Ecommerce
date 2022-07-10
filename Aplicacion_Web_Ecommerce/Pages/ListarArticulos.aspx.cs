﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Aplicacion_Web_Ecommerce.Pages
{
    public partial class ListarArticulos : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos = new List<Articulo>();
        ArticuloNegocio negocio = new ArticuloNegocio(); //ok

        protected void Page_Load(object sender, EventArgs e)
        {
            listaArticulos = negocio.listar();
            if (!IsPostBack)
                Session.Add("listaArticulos", listaArticulos);
        }
    }
}