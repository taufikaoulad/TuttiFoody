﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        RecetasBD recetasBD = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                recetasBD = new RecetasBD();

                repRecetas.DataSource = recetasBD.Select();
                repRecetas.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string nombre = inputBusqueda.Text;

            if (nombre.Length == 0)
            {
                repRecetas.DataSource = recetasBD.Select();
                repRecetas.DataBind();
            }
            else
            {
                nombre = char.ToUpper(nombre[0]) + nombre.Substring(1);
            }

            nombre = char.ToUpper(nombre[0]) + nombre.Substring(1);

            recetasBD = new RecetasBD();

            repRecetas.DataSource = recetasBD.SelectBusqueda(nombre);
            repRecetas.DataBind();
        }
    }
}