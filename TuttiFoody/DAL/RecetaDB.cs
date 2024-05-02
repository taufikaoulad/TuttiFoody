using System;
using System.Data.SqlClient;

namespace TuttiFoody.DAL
{
    public class RecetaDB
    {
        // Cadena de conexión a la base de datos (debes reemplazarla con tu propia cadena de conexión)
        private string connectionString = "Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;";

        public RecetaS ObtenerRecetaPorId(int idReceta)
        {
            RecetaS receta = null;

            string query = "SELECT IdReceta, Nombre, Descripcion, PasosASeguir, Tiempo, CaloriasTotales, ArchivoImagen " +
                           "FROM Receta " +
                           "WHERE IdReceta = @IdReceta";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@IdReceta", idReceta);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        receta = new RecetaS();
                        receta.IdReceta = Convert.ToInt32(reader["IdReceta"]);
                        receta.Nombre = reader["Nombre"].ToString();
                        receta.Descripcion = reader["Descripcion"].ToString();
                        receta.PasosASeguir = reader["PasosASeguir"].ToString();
                        receta.Tiempo = reader["Tiempo"].ToString();
                        receta.CaloriasTotales = Convert.ToInt32(reader["CaloriasTotales"]);
                        receta.ArchivoImagen = reader["ArchivoImagen"].ToString();
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Manejar errores
                }
            }

            return receta;
        }
    }
}
