//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cinema
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_Proyeccion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_Proyeccion()
        {
            this.T_SillaReserva = new HashSet<T_SillaReserva>();
        }
    
        public int Tn_IdProyeccion { get; set; }
        public int Tn_IdPelicula { get; set; }
        public int Tn_IdSala { get; set; }
        public System.DateTime Tn_FechaHora { get; set; }
        public Nullable<bool> Tb_Estado { get; set; }
    
        public virtual T_Sala T_Sala { get; set; }
        public virtual TPelicula TPelicula { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_SillaReserva> T_SillaReserva { get; set; }
    }
}
