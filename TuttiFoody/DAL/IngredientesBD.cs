﻿using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;


namespace TuttiFoody.DAL
{
    public class IngredientesBD
    {
        DBConnect db = new DBConnect("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");

        public List<string> ObtenerNombresAlimentos()
        {
            // Realizar una consulta para obtener los nombres de los alimentos
            var nombresAlimentos = (from alim in db.Alimento
                                    select alim.Nombre).ToList();

            return nombresAlimentos;
        }
    }
}