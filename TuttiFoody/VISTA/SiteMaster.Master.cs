﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuttiFoody.VISTA
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["usuarioObj"] != null)
                Response.Redirect("Perfil.aspx");
            else
                Response.Redirect("IniciarSesion.aspx");
        }
    }
}