using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class AlimentosM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AlimentoBD alimentoBD = new AlimentoBD();

                repLegumbres.DataSource = alimentoBD.Select(1);
                repLegumbres.DataBind();

                repVerduras.DataSource = alimentoBD.Select(2);
                repVerduras.DataBind();

                repCarnes.DataSource = alimentoBD.Select(3);
                repCarnes.DataBind();

                repLacteos.DataSource = alimentoBD.Select(4);
                repLacteos.DataBind();

                repFrutas.DataSource = alimentoBD.Select(5);
                repFrutas.DataBind();

                repCereales.DataSource = alimentoBD.Select(6);
                repCereales.DataBind();

                repAceites.DataSource = alimentoBD.Select(7);
                repAceites.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string nombre = inputBusqueda.Text;

            nombre = char.ToUpper(nombre[0]) + nombre.Substring(1);

            AlimentoBD alimentoBD = new AlimentoBD();
            int tipoAlimento = alimentoBD.SelectTipoAlimento(nombre);

            switch (tipoAlimento)
            {
                case 1:
                    repLegumbres.DataSource = alimentoBD.SelectBusqueda(nombre, 1);
                    repLegumbres.DataBind();
                    // Ejecutar una función JavaScript después de que la página se haya cargado completamente
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#legumbres'; };", true);
                    break;
                case 2:
                    repVerduras.DataSource = alimentoBD.SelectBusqueda(nombre, 2);
                    repVerduras.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#verdurasHortalizas'; };", true);
                    break;
                case 3:
                    repCarnes.DataSource = alimentoBD.SelectBusqueda(nombre, 3);
                    repCarnes.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#carnesPescados'; };", true);
                    break;
                case 4:
                    repLacteos.DataSource = alimentoBD.SelectBusqueda(nombre, 4);
                    repLacteos.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#lacteos'; };", true);
                    break;
                case 5:
                    repFrutas.DataSource = alimentoBD.SelectBusqueda(nombre, 5);
                    repFrutas.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#frutas'; };", true);
                    break;
                case 6:
                    repCereales.DataSource = alimentoBD.SelectBusqueda(nombre, 6);
                    repCereales.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#cereales'; };", true);
                    break;
                case 7:
                    repAceites.DataSource = alimentoBD.SelectBusqueda(nombre, 7);
                    repAceites.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "window.onload = " +
                        "function(){ window.location.href = '/VISTA/Alimentos.aspx#aceitesGrasas'; };", true);
                    break;
                default:
                    //hacer el default 
                    break;
            }
        }
    }
}