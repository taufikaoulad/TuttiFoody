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

        public IQueryable<dynamic> Select()
        {
            var data = from alim in db.Alimento
                       select alim;
                       

            return data;
        }

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

        public Alimento SelectById(int id)
        {
            var data = from alim in db.Alimento
                       where alim.IdAlimento == id
                       select alim;

            return data.FirstOrDefault();
        }

        public int SelectTipoAlimento(string nombre)
        {
            var data = (from alim in db.Alimento
                        where alim.Nombre.Contains(nombre)
                        select alim.FKTipoAlimento).FirstOrDefault();

            return data; 
        }

        public IQueryable<dynamic> SelectBusqueda(string nombre, int tipo)
        {
            // Obtenemos todos los datos sin filtrar
            var allData = (from alim in db.Alimento
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
                           }).ToList();

            // Filtramos los datos para que el dato filtrado salga primero
            var searchData = allData.Where(a => a.NombreAlimento.Contains(nombre)).ToList();
            var remainingData = allData.Except(searchData).ToList();

            // Unimos los resultados
            var mergedData = searchData.Concat(remainingData);

            return mergedData.AsQueryable();
        }

        public void Insertar(Alimento alim)
        {
            db.Alimento.InsertOnSubmit(alim);
            db.SubmitChanges();
        }

        public void Delete(Alimento alim)
        {
            db.Alimento.DeleteOnSubmit(alim);
            db.SubmitChanges();
        }

        public void Update()
        {
            db.SubmitChanges();
        }
    }
}