using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TuttiFoody.DAL;


namespace TuttiFoody
{
    
    internal class IngredientesDAL
    {

        private string connectionString;

        public IngredientesDAL(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<string> ObtenerNombresAlimentos()
        {
            List<string> nombresAlimentos = new List<string>();
            string query = "SELECT Nombre FROM Alimento";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        string nombreAlimento = reader["Nombre"].ToString();
                        nombresAlimentos.Add(nombreAlimento);
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Manejar la excepción según sea necesario
                }
            }

            return nombresAlimentos;
        }
    }
}