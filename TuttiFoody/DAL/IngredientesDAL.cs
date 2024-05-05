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

        public List<(string Nombre, int Id)> ObtenerAlimentos()
        {
            List<(string Nombre, int Id)> alimentos = new List<(string Nombre, int Id)>();
            string query = "SELECT IdAlimento, Nombre FROM Alimento";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        int idAlimento = Convert.ToInt32(reader["IdAlimento"]);
                        string nombreAlimento = reader["Nombre"].ToString();
                        alimentos.Add((nombreAlimento, idAlimento));
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Manejar la excepción según sea necesario
                }
            }

            return alimentos;
        }

    }
}