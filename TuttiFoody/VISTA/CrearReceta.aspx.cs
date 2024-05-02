using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace TuttiFoody.VISTA
{
    public partial class CrearReceta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;";
                string query = "SELECT Nombre FROM Alimento";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        for (int i = 0; i <= 8; i++) 
                        {
                            DropDownList ddl = (DropDownList)FindControl($"ingrediente_{i}");
                            ListItem ddlItem = new ListItem("Ingrediente...", "");
                            ddl.Items.Add(ddlItem);
                        }

                        while (reader.Read())
                        {
                            string nombreAlimento = reader["Nombre"].ToString();

                            for (int i = 0; i <= 8; i++)
                            {
                                DropDownList ddl = (DropDownList)FindControl($"ingrediente_{i}");
                                ListItem ddlItem = new ListItem(nombreAlimento);
                                ddl.Items.Add(ddlItem);
                            }
                        }
                        reader.Close();
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }
    }


}
