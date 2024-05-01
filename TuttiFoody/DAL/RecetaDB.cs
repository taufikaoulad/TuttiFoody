using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    public class RecetaDB
    {
        DBConnectDataContext db = new DBConnectDataContext("Server=85.208.20.69,54321;Database=BaseDeDatosGrupoSWAT;User Id=sa;Password=Sql#123456789;");
    }
}