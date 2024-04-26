using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class RecuperarContrasenya : System.Web.UI.Page
    {
        string fromMail = "tuttifoodydepartment@gmail.com";
        string fromPassword = "xqumqhbyarahblzn";
        int codigo = 0;
        MailMessage message = new MailMessage();
        UsuarioDAL usuarioDAL = new UsuarioDAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCode_OnClick(object sender, EventArgs e)
        {
            GenerarCodigo();
            EnviarCodigo();
        }


        protected void btnGuardar_OnClick(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtRepeatPassword.Text)
            {
                codigo = (int)Session["codigoSesion"];
                if (int.Parse(txtCode.Text) == codigo )
                {
                    errorMsg.InnerText = "BIEN";
                    // Usuario usuario = usuarioDAL.SelectByName(txt.Value);
                    Usuario usuario = usuarioDAL.SelectByEmail(txtEmail.Text);
                    usuario.Contraseña = txtPassword.Text;

                    usuarioDAL.ExecuteUpdate();
                }
            }
        }

        private void EnviarCodigo()
        {
            message.From = new MailAddress(fromMail);
            message.Subject = "TUTTI FOODY CONFIRMATION CODE";
            message.To.Add(new MailAddress(txtEmail.Text));
            message.Body = "Esta es una prueba. TUTTI FOODY CODE:" + codigo;

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true
            };

            smtpClient.Send(message);
        }

        private void GenerarCodigo()
        {
            Random rnd = new Random();
            codigo = rnd.Next(100000, 1000000);
            Session["codigoSesion"] = codigo;
        }
    }
}