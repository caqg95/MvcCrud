//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConexionLinQMVC.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblJustificacionPersonal
    {
        public int IdEmpleados { get; set; }
        public int IdJustificacion { get; set; }
        public System.DateTime FechaI { get; set; }
        public System.DateTime FechaF { get; set; }
        public int IdDias { get; set; }
        public string Observaciones { get; set; }
    
        public virtual tblDias tblDias { get; set; }
        public virtual tblEmpleados tblEmpleados { get; set; }
        public virtual tblTipoJustificacion tblTipoJustificacion { get; set; }
    }
}
