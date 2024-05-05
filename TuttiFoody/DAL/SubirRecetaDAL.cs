using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class SubirRecetaDAL
    {
        private DBConnectDataContext dc;

        public SubirRecetaDAL()
        {
            // Inicializar el contexto de datos
            dc = new DBConnectDataContext("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");
        }

        public int InsertarReceta(string nombreReceta, string descripcion, string pasosASeguir, string tiempo, string rutaImagen)
        {
            try
            {
                // Crear una nueva instancia de Receta y establecer sus propiedades
                Receta nuevaReceta = new Receta();
                nuevaReceta.Nombre = nombreReceta;
                nuevaReceta.Descripcion = descripcion;
                nuevaReceta.PasosASeguir = pasosASeguir;
                nuevaReceta.Tiempo = tiempo;
                nuevaReceta.ArchivoImagen = rutaImagen; // Asignar la ruta de la imagen a la receta
                nuevaReceta.FKUsuario = 1; // Asignar la receta al usuario con IdUsuario igual a 1

                // Agregar la nueva receta al contexto de datos y guardar los cambios
                dc.Receta.InsertOnSubmit(nuevaReceta);
                dc.SubmitChanges();

                // Devolver el ID de la receta insertada
                return nuevaReceta.IdReceta;
            }
            catch (Exception ex)
            {
                // Manejar errores
                throw new Exception("Error al insertar la receta: " + ex.Message);
            }
        }

        public void InsertarRecetaAlimento(int idReceta, int idAlimento, int cantidad)
        {
            //try
            //{
            //    // Crear una nueva instancia de RecetaAlimento y establecer sus propiedades
            //    RecetaAlimento nuevaRelacion = new RecetaAlimento();
            //    nuevaRelacion.FKReceta = idReceta;
            //    nuevaRelacion.FKAlimento = idAlimento;
            //    nuevaRelacion.Cantidad = cantidad;

            //    // Agregar la nueva relación al contexto de datos y guardar los cambios
            //    dc.RecetaAlimento.InsertOnSubmit(nuevaRelacion);
            //    dc.SubmitChanges();
            //}
            //catch (Exception ex)
            //{
            //    // Manejar errores
            //    throw new Exception("Error al insertar la relación entre la receta y el alimento: " + ex.Message);
            //}
        }


    }
}
