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
    
    public partial class T_Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_Usuario()
        {
            this.T_Reservacion = new HashSet<T_Reservacion>();
        }
    
        public int Tn_IdUsuario { get; set; }
        public string Tt_NombreUsuario { get; set; }
        public byte[] Tt_CorreoElectronico { get; set; }
        public string Tt_Contrasenna { get; set; }
        public string Tt_Telefono { get; set; }
        public System.DateTime Tf_FechaNacimiento { get; set; }
        public Nullable<int> Tn_IdTipoUsuario { get; set; }
        public Nullable<System.DateTime> Tf_FechaCreacion { get; set; }
        public Nullable<bool> Tb_Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_Reservacion> T_Reservacion { get; set; }
        public virtual T_TipoUsuario T_TipoUsuario { get; set; }
    }
}
