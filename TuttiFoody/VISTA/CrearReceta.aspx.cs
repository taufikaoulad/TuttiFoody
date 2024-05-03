using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
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
            try
            {
                // Obtener los valores de los campos de la receta
                string nombreReceta = NombreDeReceta.Text;
                string descripcion = descripcion_letra.Text;
                string pasosASeguir = pasos_letra.Text;
                string tiempo = Tiempo.Text;

                // Obtener la ruta de la imagen subida por el usuario
                string rutaImagen = GuardarImagenEnServidor();

                // Crear una instancia de SubirRecetaDAL y llamar al método InsertarReceta
                SubirRecetaDAL subirRecetaDAL = new SubirRecetaDAL();
                subirRecetaDAL.InsertarReceta(nombreReceta, descripcion, pasosASeguir, tiempo, rutaImagen);

                // Mostrar un mensaje de éxito
                mensajeError.ForeColor = System.Drawing.Color.Black;
                mensajeError.Text = "¡La receta se ha subido correctamente!";

                // Limpiar los TextBox después de subir la receta
                NombreDeReceta.Text = "";
                descripcion_letra.Text = "";
                pasos_letra.Text = "";
                Tiempo.Text = "";
            }
            catch (Exception ex)
            {
                // Manejar errores
                mensajeError.ForeColor = System.Drawing.Color.Red;
                mensajeError.Text = "Error al subir la receta: " + ex.Message;
            }
        }

        private string GuardarImagenEnServidor()
        {
            // Verificar si se ha subido un archivo
            if (imagen.HasFile)
            {
                try
                {
                    // Ruta base donde se guardarán las imágenes
                    string rutaBase = "/CONTENT/Imagenes/";

                    // Obtener la extensión del archivo
                    string extension = Path.GetExtension(imagen.FileName);

                    // Generar un nombre único para el archivo de imagen
                    string nombreArchivo = Guid.NewGuid().ToString() + extension;

                    // Construir la ruta completa donde se guardará la imagen en el servidor
                    string rutaCompleta = Server.MapPath(rutaBase + nombreArchivo);

                    // Guardar la imagen en el servidor
                    imagen.SaveAs(rutaCompleta);

                    // Devolver la ruta relativa de la imagen para almacenarla en la base de datos
                    return rutaBase + nombreArchivo;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al guardar la imagen en el servidor: " + ex.Message);
                }
            }
            else
            {
                // Si no se ha subido ninguna imagen, lanzar una excepción o manejar el caso según sea necesario
                throw new Exception("No se ha seleccionado ninguna imagen para subir.");
            }
        }


    }


}
