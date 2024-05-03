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

        public void InsertarReceta(string nombreReceta, string descripcion, string pasosASeguir, string tiempo)
        {
            try
            {
                // Crear una nueva instancia de Receta y establecer sus propiedades
                Receta nuevaReceta = new Receta();
                nuevaReceta.Nombre = nombreReceta;
                nuevaReceta.Descripcion = descripcion;
                nuevaReceta.PasosASeguir = pasosASeguir;
                nuevaReceta.Tiempo = tiempo;
                nuevaReceta.FKUsuario = 1; // Asignar la receta al usuario con IdUsuario igual a 1

                // Agregar la nueva receta al contexto de datos y guardar los cambios
                dc.Receta.InsertOnSubmit(nuevaReceta);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                // Manejar errores
                throw new Exception("Error al insertar la receta: " + ex.Message);
            }
        }


    }
}
