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
    
    public partial class Entity
    {
        public Entity()
        {
            this.Roles = new HashSet<Role>();
            this.Decisions = new HashSet<Decision>();
            this.Sessions = new HashSet<Session>();
            this.Friends = new HashSet<Entity>();
            this.Options = new HashSet<Options>();
            this.Ratings = new HashSet<Rating>();
            this.Factors = new HashSet<Factor>();
            this.SocialIdentities = new HashSet<SocialIdentity>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<Role> Roles { get; set; }
        public virtual ICollection<Decision> Decisions { get; set; }
        public virtual ICollection<Session> Sessions { get; set; }
        public virtual Reputation Reputation { get; set; }
        public virtual ICollection<Entity> Friends { get; set; }
        public virtual ICollection<Options> Options { get; set; }
        public virtual ComplexDecision ComplexDecisions { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual ICollection<Factor> Factors { get; set; }
        public virtual ICollection<SocialIdentity> SocialIdentities { get; set; }
    }
}
