using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class RecetasBD
    {
        DBConnectDataContext db = new DBConnectDataContext();

        public IQueryable<dynamic> Select()
        {
            var data = from rec in db.Receta
                       select new 
                       {
                           NombreR = rec.Nombre,
                           DescripcionR = rec.Descripcion,
                           TiempoR = rec.Tiempo,
                           CaloriasTotalesR = rec.CaloriasTotales,
                           ArchivoImagen = rec.ArchivoImagen ?? "/Content/Imagenes/imgNotFound.png"
                       };
            return data;
        }

        public IQueryable<dynamic> SelectBusqueda(string nombre)
        {
            var data = Select().ToList();

            // Filtramos los datos para que el dato filtrado salga primero
            var searchData = data.Where(r => r.NombreR.Contains(nombre)).ToList();
            var remainingData = data.Except(searchData).ToList();

            // Unimos los resultados
            var margedData = searchData.Concat(remainingData);

            return margedData.AsQueryable();
        }
    }
}