using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.UI;
using System.Web.Services.Description;

namespace TuttiFoody.VISTA
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string fromMail = "tuttifoodydepartment@gmail.com";
        string fromPassword = "xqumqhbyarahblzn";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            EnviarContacto(cuadroCorreoElectronico.Text, txtMensaje.Text, "Mensaje de " + cuadroNombre.Text);
        }
        private void EnviarContacto(String toMail, String body, String subject)
        {
            MailMessage message = new MailMessage();

            message.From = new MailAddress(fromMail);
            message.Subject = subject;
            message.To.Add(new MailAddress(toMail));
            message.To.Add(new MailAddress(fromMail));
            message.Body = body;

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true
            };

            smtpClient.Send(message);
        }
    }
}