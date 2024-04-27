using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class RecetasBD
    {
        DBConnect db = new DBConnect("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");

        /*public IQueryable<Receta> Select()
        {
            var data = from rec in db.Receta
                       select rec;
            return data;
        }*/

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
    }
}