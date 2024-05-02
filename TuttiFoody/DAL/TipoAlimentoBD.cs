using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class TipoAlimentoBD
    {

        DBConnectDataContext db = new DBConnectDataContext();

        public IQueryable<dynamic> Select()
        {
            var data = from tipoAlim in db.TipoAlimento
                       select tipoAlim;

            return data;
        }
    }
}