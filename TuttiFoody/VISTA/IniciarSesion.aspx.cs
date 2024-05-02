﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class IniciarSesionM : Page
    {
        UsuarioDAL usuarioDAL = new UsuarioDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIniciaSesion_OnClick(object sender, EventArgs e)
        {
            comprobarCredenciales();
        }

        private void comprobarCredenciales()
        {
            Usuario usuario = usuarioDAL.SelectByName(txtName.Value);
            if (usuario != null)
            {
                if (usuario.Contraseña == txtPassword.Value)
                {
                    errorMsg.InnerText = "BIEEEEEN";
                    Session["usuarioObj"] = usuario.Nombre;
                    Response.Redirect("Perfil.aspx");
                }
                else
                {
                    errorMsg.InnerText = "Credenciales incorrectas.";

                }
            }
            else
            {
                errorMsg.InnerText = "Usuario inexistente.";
            }
        }
    }
}