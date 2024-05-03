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

                IngredientesDAL ingredientesDAL = new IngredientesDAL(connectionString);

                // Obtener alimentos con sus nombres e IDs
                var alimentos = ingredientesDAL.ObtenerAlimentos();

                // Llenar los DropDownList
                for (int i = 0; i <= 8; i++)
                {
                    DropDownList ddl = (DropDownList)FindControl($"ingrediente_{i}");
                    ddl.Items.Add(new ListItem("Ingrediente...", ""));
                    foreach (var alimento in alimentos)
                    {
                        ddl.Items.Add(new ListItem(alimento.Nombre, alimento.Id.ToString()));
                    }
                }
            }
        }


        protected void boton_enviar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombreReceta = NombreDeReceta.Text;
                string descripcion = descripcion_letra.Text;
                string pasosASeguir = pasos_letra.Text;
                string tiempo = Tiempo.Text;

                string rutaImagen = GuardarImagenEnServidor();

                SubirRecetaDAL subirRecetaDAL = new SubirRecetaDAL();

                int idReceta = subirRecetaDAL.InsertarReceta(nombreReceta, descripcion, pasosASeguir, tiempo, rutaImagen);

                GuardarIngredientes(idReceta);

                // Mostrar un mensaje de éxito
                mensajeError.ForeColor = System.Drawing.Color.Black;
                mensajeError.Text = "¡La receta se ha subido correctamente!";

                NombreDeReceta.Text = "";
                descripcion_letra.Text = "";
                pasos_letra.Text = "";
                Tiempo.Text = "";
            }
            catch (Exception ex)
            {
                mensajeError.ForeColor = System.Drawing.Color.Red;
                mensajeError.Text = "Error al subir la receta: " + ex.Message;
            }
        }

        private void GuardarIngredientes(int idReceta)
        {
            try
            {
                for (int i = 0; i < 9; i++) // Recorrer los cuadros de ingredientes
                {
                    DropDownList ddlIngrediente = (DropDownList)Page.FindControl("ingrediente_" + i);
                    TextBox txtCantidad = (TextBox)Page.FindControl("cantidad_" + i);

                    if (ddlIngrediente != null && txtCantidad != null)
                    {
                        // Obtener el ID del alimento y la cantidad
                        int idAlimento = Convert.ToInt32(ddlIngrediente.SelectedValue);

                        // Validar y convertir la cantidad
                        int cantidad;
                        if (!int.TryParse(txtCantidad.Text, out cantidad))
                        {
                            throw new Exception("La cantidad de ingredientes no es un número válido.");
                        }

                        // Guardar la relación en la tabla RecetaAlimento
                        SubirRecetaDAL subirRecetaDAL = new SubirRecetaDAL();
                        subirRecetaDAL.InsertarRecetaAlimento(idReceta, idAlimento, cantidad);

                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al guardar los ingredientes de la receta: " + ex.Message);
            }
        }



        private string GuardarImagenEnServidor()
        {
            if (imagen.HasFile)
            {
                try
                {
                    string rutaBase = "/CONTENT/Imagenes/";
                    string extension = Path.GetExtension(imagen.FileName);
                    string nombreArchivo = Guid.NewGuid().ToString() + extension;
                    string rutaCompleta = Server.MapPath(rutaBase + nombreArchivo);
                    imagen.SaveAs(rutaCompleta);
                    return rutaBase + nombreArchivo;
                }
                catch (Exception ex)
                {
                    throw new Exception("Error al guardar la imagen en el servidor: " + ex.Message);
                }
            }
            else
            {
                throw new Exception("No se ha seleccionado ninguna imagen para subir.");
            }
        }


    }


}
