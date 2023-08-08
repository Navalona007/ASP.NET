using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ApprendreAspNet
{
    public class ConnexionBD
    {
        private readonly string connectionString;

        public ConnexionBD(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public void ExecuteNonQuery(string query, NpgsqlParameter[] parameters)
        {
            using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
            {
                using (NpgsqlCommand command = new NpgsqlCommand(query, connection))
                {
                    connection.Open();
                    command.Parameters.AddRange(parameters);
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}