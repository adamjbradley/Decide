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
    
    public partial class ComplexDecisionHistory
    {
        public ComplexDecisionHistory()
        {
            this.ComplexDecisions = new HashSet<ComplexDecision>();
        }
    
        public int Id { get; set; }
        public long Version { get; set; }
        public System.DateTime DateTime { get; set; }
    
        public virtual ICollection<ComplexDecision> ComplexDecisions { get; set; }
    }
}
