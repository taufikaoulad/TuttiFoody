using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TuttiFoody.DAL
{
    
    internal class UsuarioDAL
    {
        DBConnectDataContext dc = new DBConnectDataContext();

        public void InsertUsuario(Usuario u)
        {
            try
            {
                dc.Usuario.InsertOnSubmit(u);
                dc.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}