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
    
    public partial class T_Sala
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_Sala()
        {
            this.T_Proyeccion = new HashSet<T_Proyeccion>();
            this.T_Silla = new HashSet<T_Silla>();
        }
    
        public int Tn_IdSala { get; set; }
        public string Tt_NombreSala { get; set; }
        public int Tn_NumeroAsientos { get; set; }
        public Nullable<int> Tn_IdtipoSala { get; set; }
        public Nullable<bool> Tb_Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_Proyeccion> T_Proyeccion { get; set; }
        public virtual T_SalaTipo T_SalaTipo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_Silla> T_Silla { get; set; }
    }
}