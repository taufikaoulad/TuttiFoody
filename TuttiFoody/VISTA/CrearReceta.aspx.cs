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

            // Obtener los valores ingresados por el usuario
            string nombreReceta = NombreDeReceta.Text;
            string tiempoReceta = Tiempo.Text;
            string descripcionReceta = descripcion_letra.Text;
            string pasosReceta = pasos_letra.Text;

            // Guardar la imagen en una ruta específica y obtener la ruta de la imagen
            //string rutaImagen = GuardarImagen(imagen);

            // Conectar con la base de datos y guardar los datos en la tabla de recetas
            string connectionString = ConfigurationManager.ConnectionStrings["TuConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string insertQuery = "INSERT INTO Receta (Nombre, Descripcion, PasosASeguir, Tiempo, ArchivoImagen) VALUES (@Nombre, @Descripcion, @PasosASeguir, @Tiempo, @ArchivoImagen); SELECT SCOPE_IDENTITY();";

                SqlCommand command = new SqlCommand(insertQuery, connection);
                command.Parameters.AddWithValue("@Nombre", nombreReceta);
                command.Parameters.AddWithValue("@Descripcion", descripcionReceta);
                command.Parameters.AddWithValue("@PasosASeguir", pasosReceta);
                command.Parameters.AddWithValue("@Tiempo", tiempoReceta);
                //command.Parameters.AddWithValue("@ArchivoImagen", rutaImagen);

                try
                {
                    connection.Open();
                    int idReceta = Convert.ToInt32(command.ExecuteScalar());

                    // Guardar los ingredientes en la tabla de receta-alimento
                    for (int i = 0; i <= 8; i++)
                    {
                        DropDownList ddlIngredientes = (DropDownList)FindControl($"ingrediente_{i}");
                        TextBox txtCantidad = (TextBox)FindControl($"cantidad_{i}");

                        if (ddlIngredientes.SelectedItem != null && !string.IsNullOrEmpty(txtCantidad.Text))
                        {
                            int idAlimento = Convert.ToInt32(ddlIngredientes.SelectedValue);
                            int cantidad = Convert.ToInt32(txtCantidad.Text);

                            // Insertar en la tabla de receta-alimento
                            string insertIngredientesQuery = "INSERT INTO RecetaAlimento (FKReceta, FKAlimento, Cantidad) VALUES (@FKReceta, @FKAlimento, @Cantidad)";
                            SqlCommand commandIngredientes = new SqlCommand(insertIngredientesQuery, connection);
                            commandIngredientes.Parameters.AddWithValue("@FKReceta", idReceta);
                            commandIngredientes.Parameters.AddWithValue("@FKAlimento", idAlimento);
                            commandIngredientes.Parameters.AddWithValue("@Cantidad", cantidad);
                            commandIngredientes.ExecuteNonQuery();
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Manejar errores
                }
            }
        }

        // Método para guardar la imagen en una ruta específica y retornar la ruta de la imagen
        private string GuardarImagen(HtmlInputFile fileUpload)
        {
            if (fileUpload.PostedFile != null && fileUpload.PostedFile.ContentLength > 0)
            {
                string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string filePath = Server.MapPath("~/Images/") + fileName;
                fileUpload.PostedFile.SaveAs(filePath);
                return "~/Images/" + fileName;
            }
            return null;
        }
    }


}
