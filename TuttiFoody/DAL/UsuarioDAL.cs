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

        public void RemoveUsuario(Usuario u)
        {
            try
            {
                dc.Usuario.DeleteOnSubmit(u);
                dc.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void ExecuteUpdate()
        {
            try
            {
                dc.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }

        }

        public Usuario SelectByName(string name)
        {
            var us = from user in dc.Usuario
                    where user.Nombre == name
                    select user;
            return us.FirstOrDefault();
        }

        public Usuario SelectByEmail(string email)
        {
            var us = from user in dc.Usuario
                     where user.Correo == email
                     select user;
            return us.FirstOrDefault();
        }

        //public employees SelectByID(int id)
        //{
        //    var data =
        //               from emp in dc.employees
        //               where emp.employee_id == id
        //               select emp;

        //    return data.FirstOrDefault();
        //}
    }
}