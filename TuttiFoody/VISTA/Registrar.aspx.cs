using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class Registrar : Page
    {
        UsuarioDAL usuarioDAL = new UsuarioDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                errorMsg.InnerText = "";
            }
        }
        protected void btnRegistrar_OnClick(object sender, EventArgs e)
        {
            InsertarUsuario();
        }

        /// <summary>
        /// Este método recoge todos los datos del formulario para crear un nuevo usuario y guardarlo en la base de datos.
        /// </summary>
        private void InsertarUsuario()
        {
            //Primero comprueba si el nombre o correo insertado ya existe en la base de datos
            if (usuarioDAL.SelectByName(txtName.Value) == null)
            {
                if (usuarioDAL.SelectByEmail(txtEmail.Value) == null)
                {
                    // Si las contraseñas no coinciden no se creará el nuevo usuario
                    if (txtPassword.Value == txtConfirmPassword.Value)
                    {
                        Usuario usuario = new Usuario();
                        usuario.Nombre = txtName.Value;
                        usuario.Correo = txtEmail.Value;
                        usuario.Contraseña = txtPassword.Value;
                        usuarioDAL.InsertUsuario(usuario);
                        Response.Redirect("IniciarSesion.aspx");
                    }
                    else
                        errorMsg.InnerText = "Las contraseñas no coinciden.";
                }
                else
                    errorMsg.InnerText = "El correo ya está en uso.";
            }
            else
                errorMsg.InnerText = "El nombre ya está en uso.";
            //Response.Redirect("RecuperarContrasenya.aspx");
        }

    }
}