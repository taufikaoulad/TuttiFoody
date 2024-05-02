using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class TipoAlimentoBD
    {

        DBConnect db = new DBConnect("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");


        public IQueryable<dynamic> Select()
        {
            var data = from tipoAlim in db.TipoAlimento
                       select tipoAlim;

            return data;
        }
    }
}