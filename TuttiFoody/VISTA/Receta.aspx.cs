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
    public partial class Receta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Crear una instancia de RecetaDB
                RecetaDB recetaDB = new RecetaDB();

                // Obtener la receta con ID 1
                RecetaS receta = recetaDB.ObtenerRecetaPorId(1);


                // Verificar si se encontró la receta
                if (receta != null)
                {
                    // Mostrar los detalles de la receta en la página
                    TituloReceta.Text = receta.Nombre;
                    DescripcionReceta.Text = receta.Descripcion;
                    PasosReceta.Text = receta.PasosASeguir;
                    TiempoReceta.Text = receta.Tiempo;
                    CaloriasReceta.Text = receta.CaloriasTotales.ToString(); // Asumiendo que CaloriasTotales es un entero en la clase Receta
                    // Otros campos de la receta...
                }
                else
                {
                    // Manejar el caso en que no se encuentre la receta
                    TituloReceta.Text = "Receta no encontrada";
                }
            }
        }
    }
}