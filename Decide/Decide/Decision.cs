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
    
    public partial class Decision
    {
        public Decision()
        {
            this.Entity = new HashSet<Entity>();
            this.Options = new HashSet<Options>();
            this.Ratings = new HashSet<Rating>();
        }
    
        public int Id { get; set; }
        public bool IsPrivate { get; set; }
        public string Description { get; set; }
        public string Name { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateModified { get; set; }
        public string Version { get; set; }
        public bool IsSocial { get; set; }
        public bool IsPersonal { get; set; }
        public bool IsPublic { get; set; }
        public string Weight { get; set; }
        public string IsHeart { get; set; }
        public string IsHead { get; set; }
    
        public virtual ICollection<Entity> Entity { get; set; }
        public virtual Wisdom Wisdom { get; set; }
        public virtual ICollection<Options> Options { get; set; }
        public virtual ComplexDecision ComplexDecision { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual DecisionHistory DecisionHistory { get; set; }
    }
}
