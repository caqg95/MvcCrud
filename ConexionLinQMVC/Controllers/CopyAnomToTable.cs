using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using ConexionLinQMVC.Models;
namespace LinqExercice.Data
{
    public static class IEnumerableExtensions
    {
        public static DataTable CopyAnomToTable<T>(this IEnumerable<T> info)
        {
            var type = typeof(T);
            if (type.Equals(typeof(DataRow)))
                return (info as IEnumerable<DataRow>).CopyToDataTable();

            DataTable dt = new DataTable();
            DataRow r;
            type.GetProperties().ToList().ForEach(a => dt.Columns.Add(a.Name));
            foreach (var c in info)
            {
                r = dt.NewRow();
                c.GetType().GetProperties().ToList().ForEach(a => r[a.Name] = a.GetValue(c, null));
                dt.Rows.Add(r);
            }
            return dt;
        }
    }

    public class CopyAnomToTable
    {
    }
}