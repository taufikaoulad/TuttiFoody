using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class Alimentos : System.Web.UI.Page
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
    }
}