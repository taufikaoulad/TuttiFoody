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
                // Conecta con la base de datos y ejecuta la consulta SQL para obtener los nombres de los alimentos
                string connectionString = "Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;";
                string query = "SELECT Nombre FROM Alimento";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        // Agregar el elemento de "Seleccione un ingrediente" a cada lista desplegable
                        for (int i = 0; i <= 8; i++) // Ajusta según la cantidad de listas desplegables que tengas
                        {
                            DropDownList ddl = (DropDownList)FindControl($"ingrediente_{i}");
                            ListItem ddlItem = new ListItem("Ingrediente...", "");
                            ddl.Items.Add(ddlItem);
                        }

                        // Recorre los resultados de la consulta y agrega cada nombre de alimento como un nuevo elemento a las listas desplegables
                        while (reader.Read())
                        {
                            // Obtener el nombre del alimento de la fila actual
                            string nombreAlimento = reader["Nombre"].ToString();

                            // Agregar el nombre del alimento como un nuevo elemento a todas las listas desplegables
                            for (int i = 0; i <= 8; i++) // Ajusta según la cantidad de listas desplegables que tengas
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
                        // Manejo de errores
                    }
                }
            }
        }
    }


}
