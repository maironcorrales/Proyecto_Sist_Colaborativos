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
    
    public partial class TGenero
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TGenero()
        {
            this.TPelicula = new HashSet<TPelicula>();
        }
    
        public int Tn_IdGenero { get; set; }
        public string Tt_NombreGenero { get; set; }
        public Nullable<bool> Tb_Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TPelicula> TPelicula { get; set; }
    }
}
