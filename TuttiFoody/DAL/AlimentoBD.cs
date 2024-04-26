using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class AlimentoBD
    {
        DBConnect db = new DBConnect("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");

        public IQueryable<dynamic> Select(int tipo)
        {
            var data = from alim in db.Alimento
                       join ap in db.AlimentoPropiedad on alim.IdAlimento equals ap.FKAlimento into alimProps
                       from ap in alimProps.DefaultIfEmpty()  
                       join prop in db.Propiedad on ap.FKPropiedad equals prop.IdPropiedad into alimPropProps
                       from prop in alimPropProps.DefaultIfEmpty()  
                       where alim.FKTipoAlimento == tipo
                       group prop by alim into propiedadesPorAlimento
                       select new
                       {
                           NombreAlimento = propiedadesPorAlimento.Key.Nombre,
                           CaloriasAlimento = propiedadesPorAlimento.Key.Calorias,
                           DescripcionAlimento = propiedadesPorAlimento.Key.Descripcion,
                           Imagen = propiedadesPorAlimento.Key.ArchivoImagen != null && propiedadesPorAlimento.Key.ArchivoImagen != "" ? propiedadesPorAlimento.Key.ArchivoImagen : "/Content/Imagenes/imgNotFound.png",
                           Propiedades = propiedadesPorAlimento.Any() ? string.Join(" - ", propiedadesPorAlimento.Select(p => p.Nombre)) : null
                       };

            return data;
        }
    }
}