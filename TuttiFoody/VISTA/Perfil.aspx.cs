using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class Perfil : Page
    {
        UsuarioDAL usuarioDAL = new UsuarioDAL();
        string paginaPredeterminada = "lnkEditarPerfil";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarContenido(paginaPredeterminada);
                Session["vistaActual"] = paginaPredeterminada;
            }
            else
            {
                if (Session["vistaActual"] != null)
                {
                    MostrarContenido(Session["vistaActual"].ToString());
                }

                // Recuperar el ID del contenido seleccionado de ViewState, si está disponible.
                if (ViewState["SelectedContentId"] != null)
                {
                    string selectedContentId = ViewState["SelectedContentId"].ToString();
                    MostrarContenido(selectedContentId);
                }
            }

        }

        protected void btnAplicarCambios_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtName.Value))
                CambiarNombre();
            else
            {
                errorMsg.Style["color"] = "red";
                errorMsg.InnerText = "Debes escribir un nombre de usuario.";
            }
        }

        private void CambiarNombre()
        {
            if (usuarioDAL.SelectByName(txtName.Value) != null)
            {
                errorMsg.Style["color"] = "red";
                errorMsg.InnerText = "El nombre ya está en uso.";
            }
            else
            {
                try
                {
                    Usuario usuario = usuarioDAL.SelectByName(Session["usuarioObj"].ToString());
                    usuario.Nombre = txtName.Value;
                    usuarioDAL.ExecuteUpdate();
                    Session["usuarioObj"] = usuario.Nombre;

                    errorMsg.Style["color"] = "green";
                    errorMsg.InnerText = "Nombre de usuario cambiado.";
                }
                catch (NullReferenceException)
                {
                    errorMsg.Style["color"] = "red";
                    errorMsg.InnerText = "Error en la base de datos. El usuario actual no existe.";
                }
            }
        }

        protected void btnBorrarCuenta_Click(object sender, EventArgs e)
        {
            usuarioDAL.RemoveUsuario(usuarioDAL.SelectByName(Session["usuarioObj"].ToString()));
            Response.Redirect("IniciarSesion.aspx");
        }

        protected void btnGuardarPass_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPass.Value) || string.IsNullOrEmpty(txtPass2.Value))
            {
                errorMsg1.Style["color"] = "red";
                errorMsg1.InnerText = "No pueden haber campos vacíos.";
            }
            else
            {
                if (txtPass.Value != txtPass2.Value)
                {
                    errorMsg1.Style["color"] = "red";
                    errorMsg1.InnerText = "Las contraseñas deben coincidir";
                }
                else
                {
                    Usuario usuario = usuarioDAL.SelectByName(Session["usuarioObj"].ToString());
                    usuario.Contraseña = txtPass.Value;

                    usuarioDAL.ExecuteUpdate();
                    errorMsg1.Style["color"] = "green";
                    errorMsg1.InnerText = "La contraseña ha sido cambiada.";
                }
            }
        }
        protected void ShowContent(object sender, EventArgs e)
        {
            // Obtener el ID del contenido seleccionado del botón que desencadenó el evento.
            string selectedContentId = ((LinkButton)sender).ID;
            Session["vistaActual"] = selectedContentId;

            // Mostrar el contenido seleccionado.
            MostrarContenido(selectedContentId);

            // Almacenar el ID del contenido seleccionado en ViewState para mantener su estado.
            ViewState["SelectedContentId"] = selectedContentId;
        }

        private void MostrarContenido(string contentId)
        {
            // Ocultar todos los contenidos.
            editarPerfil.Visible = false;
            seguridad.Visible = false;
            ajustesCuenta.Visible = false;

            try
            {
                // Mostrar el contenido seleccionado.
                switch (contentId)
                {
                    case "lnkEditarPerfil":
                        editarPerfil.Visible = true;
                        dynamicContent.Controls.Add(editarPerfil);
                        break;
                    case "lnkSeguridad":
                        seguridad.Visible = true;
                        dynamicContent.Controls.Add(seguridad);
                        break;
                    case "lnkAjustesCuenta":
                        ajustesCuenta.Visible = true;
                        dynamicContent.Controls.Add(ajustesCuenta);
                        break;
                    default:
                        break;
                }
            }
            catch (HttpException)
            {
            }

        }

        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            Session["usuarioObj"] = "";
            Response.Redirect("IniciarSesion.aspx");
        }
    }
}