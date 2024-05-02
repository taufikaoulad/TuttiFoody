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
                RecetaDB recetaDB = new RecetaDB();

                // Obtener la receta con ID 1
                RecetaS receta = recetaDB.ObtenerRecetaPorId(1);


                if (receta != null)
                {
                    TituloReceta.Text = receta.Nombre;
                    DescripcionReceta.Text = receta.Descripcion;
                    PasosReceta.Text = receta.PasosASeguir;
                    TiempoReceta.Text = receta.Tiempo;
                    CaloriasReceta.Text = receta.CaloriasTotales.ToString();
                }
                else
                {
                    TituloReceta.Text = "Receta no encontrada";
                }
            }
        }
    }
}