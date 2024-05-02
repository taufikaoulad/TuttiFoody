using System;
using System.Linq;
using TuttiFoody.VISTA;

namespace TuttiFoody.DAL
{
    public class RecetaDB
    {
        public Receta ObtenerRecetaPorId(int idReceta)
        {
            Receta receta = null;

            try
            {
                using (DBConnectDataContext dc = new DBConnectDataContext("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;"))
                {
                    // Obtener datos de la receta
                    var recetaQuery = from r in dc.Receta
                                      where r.IdReceta == idReceta
                                      select r;

                    var recetaEncontrada = recetaQuery.FirstOrDefault();

                    if (recetaEncontrada != null)
                    {
                        receta = new Receta();
                        receta.IdReceta = recetaEncontrada.IdReceta;
                        receta.Nombre = recetaEncontrada.Nombre;
                        receta.Descripcion = recetaEncontrada.Descripcion;
                        receta.PasosASeguir = recetaEncontrada.PasosASeguir;
                        receta.Tiempo = recetaEncontrada.Tiempo;
                        receta.CaloriasTotales = recetaEncontrada.CaloriasTotales;
                        receta.ArchivoImagen = recetaEncontrada.ArchivoImagen;
                    }

                    // Cambia la declaración de la consulta LINQ a una variable "var"
                    var alimentosQuery = from ra in dc.RecetaAlimento
                                         where ra.FKReceta == idReceta
                                         join a in dc.Alimento on ra.FKAlimento equals a.IdAlimento
                                         select new { Nombre = a.Nombre, Cantidad = ra.Cantidad };

                    receta.Alimento = alimentosQuery.ToList()
                                        .Select(a => new Tuple<string, int>(a.Nombre, a.Cantidad))
                                        .ToList();
                }
            }
            catch (Exception ex)
            {
                // Manejar errores
            }

            return receta;
        }
    }
}
