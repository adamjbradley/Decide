//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Decide
{
    using System;
    using System.Collections.Generic;
    
    public partial class ComplexDecision
    {
        public ComplexDecision()
        {
            this.Decisions = new HashSet<Decision>();
            this.Entities = new HashSet<Entity>();
            this.Ratings = new HashSet<Rating>();
        }
    
        public int Id { get; set; }
    
        public virtual ICollection<Decision> Decisions { get; set; }
        public virtual ICollection<Entity> Entities { get; set; }
        public virtual ComplexDecisionHistory ComplexDecisionHistory { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
    }
}
