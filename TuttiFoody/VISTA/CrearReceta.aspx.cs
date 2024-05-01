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

                        // Recorre los resultados de la consulta y agrega cada nombre de alimento como un nuevo elemento a la lista desplegable y a la lista HTML
                        while (reader.Read())
                        {
                            // Obtener el nombre del alimento de la fila actual
                            string nombreAlimento = reader["Nombre"].ToString();

                            // Agregar el nombre del alimento como un nuevo elemento de lista HTML
                            System.Web.UI.HtmlControls.HtmlGenericControl listItem = new System.Web.UI.HtmlControls.HtmlGenericControl("li");
                            listItem.InnerText = nombreAlimento;
                            listaAlimentos.Controls.Add(listItem);

                            // Agregar el nombre del alimento como un nuevo elemento a la lista desplegable
                            ListItem ddlItem = new ListItem(nombreAlimento);
                            ingrediente.Items.Add(ddlItem);
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


        protected void agregarIngrediente_Click(object sender, EventArgs e)
        {
            int numIngredientes;
            if (int.TryParse(a.Text, out numIngredientes))
            {
                for (int i = 0; i < numIngredientes; i++)
                {
                    // Crear el nuevo cuadro de ingredientes
                    HtmlGenericControl nuevoCuadro = new HtmlGenericControl("div");
                    nuevoCuadro.Attributes["class"] = "cuadro_ingrediente";
                    nuevoCuadro.Attributes["name"] = "cuadroIngredientes";

                    // Crear y configurar los elementos internos del nuevo cuadro
                    DropDownList nuevoIngrediente = new DropDownList();
                    nuevoIngrediente.ID = "ingrediente_" + (i + 1);
                    nuevoIngrediente.CssClass = "controls";
                    // Agregar opciones al DropDownList
                    nuevoIngrediente.Items.Add(new ListItem("Opción 1", "valor1"));
                    nuevoIngrediente.Items.Add(new ListItem("Opción 2", "valor2"));
                    // Otros ajustes del DropDownList si los necesitas

                    Label nuevoXText = new Label();
                    nuevoXText.Text = " X ";
                    nuevoXText.Attributes["name"] = "X_text";

                    TextBox nuevaCantidad = new TextBox();
                    nuevaCantidad.ID = "cantidad_" + (i + 1);
                    nuevaCantidad.CssClass = "controls";
                    nuevaCantidad.Attributes["placeholder"] = "Cantidad";
                    // Otros ajustes del TextBox si los necesitas

                    // Agregar los elementos al nuevo cuadro
                    nuevoCuadro.Controls.Add(nuevoIngrediente);
                    nuevoCuadro.Controls.Add(nuevoXText);
                    nuevoCuadro.Controls.Add(nuevaCantidad);

                    // Agregar el nuevo cuadro al recuadro existente
                    recuadro.Controls.Add(nuevoCuadro);
                }
            }
            else
            {
                // Manejar el caso en que el usuario no haya ingresado un número válido
                // Por ejemplo, mostrar un mensaje de error al usuario
            }
        }


    }
}