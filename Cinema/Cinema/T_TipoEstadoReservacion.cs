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
    
    public partial class T_TipoEstadoReservacion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_TipoEstadoReservacion()
        {
            this.T_Reservacion = new HashSet<T_Reservacion>();
        }
    
        public int Tn_IdEstadoReserva { get; set; }
        public string Tt_DescripcionEstadoReserva { get; set; }
        public Nullable<bool> Tb_Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_Reservacion> T_Reservacion { get; set; }
    }
}
