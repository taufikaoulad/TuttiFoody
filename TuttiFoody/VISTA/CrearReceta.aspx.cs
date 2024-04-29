using System;
using System.Collections.Generic;
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
            //--- AÑADIR NUEVO INGREDIENTE ---
            Button botonAgregarIngrediente = (Button)FindControl("agregar_ingrediente");
            botonAgregarIngrediente.Click += agregarIngrediente_Click;
        }

        protected void agregarIngrediente_Click(object sender, EventArgs e)
        {
            // Crear el nuevo cuadro de ingredientes
            HtmlGenericControl nuevoCuadro = new HtmlGenericControl("div");
            nuevoCuadro.Attributes["class"] = "cuadro_ingredientes";

            // Crear y configurar los elementos internos del nuevo cuadro
            DropDownList objetos = new DropDownList();
            objetos.CssClass = "controls";
            objetos.ID = "objetos_" + Guid.NewGuid().ToString(); // Agregar sufijo único
            objetos.Items.Add(new ListItem("Objeto 1", "objeto1"));
            objetos.Items.Add(new ListItem("Objeto 2", "objeto2"));
            objetos.Items.Add(new ListItem("Objeto 3", "objeto3"));

            Label X_text = new Label();
            X_text.CssClass = "X_text";
            X_text.ID = "X_text";
            X_text.Text = " X ";

            TextBox cantidad_objetos = new TextBox();
            cantidad_objetos.CssClass = "controls";
            cantidad_objetos.ID = "cantidad_objetos";
            cantidad_objetos.TextMode = TextBoxMode.MultiLine;
            cantidad_objetos.Attributes.Add("placeholder", "Cantidad");

            // Agregar los elementos al nuevo cuadro
            nuevoCuadro.Controls.Add(objetos);
            nuevoCuadro.Controls.Add(X_text);
            nuevoCuadro.Controls.Add(cantidad_objetos);

            // Obtener la referencia al recuadro de ingredientes y agregar el nuevo cuadro
            HtmlGenericControl recuadroIngredientes = (HtmlGenericControl)FindControl("recuadro");
            recuadroIngredientes.Controls.Add(nuevoCuadro);
        }
    }
}