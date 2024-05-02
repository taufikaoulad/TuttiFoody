using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class CrearReceta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;";

                // Instancia de RecetaDB
                IngredientesDAL IngredientesDAL = new IngredientesDAL(connectionString);

                // Obtener nombres de alimentos
                var nombresAlimentos = IngredientesDAL.ObtenerNombresAlimentos();

                // Llenar los DropDownList
                for (int i = 0; i <= 8; i++)
                {
                    DropDownList ddl = (DropDownList)FindControl($"ingrediente_{i}");
                    ddl.Items.Add(new ListItem("Ingrediente...", ""));
                    foreach (var nombreAlimento in nombresAlimentos)
                    {
                        ddl.Items.Add(new ListItem(nombreAlimento));
                    }
                }
            }
        }
        protected void boton_enviar_Click(object sender, EventArgs e)
        {

        }
    

    }


}
