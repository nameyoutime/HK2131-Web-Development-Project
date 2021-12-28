using System;
using System.Collections.Generic;

#nullable disable

namespace WebApp.Models
{
    public partial class Customer
    {
        public Customer()
        {
            OrderCustomers = new HashSet<OrderCustomer>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public virtual ICollection<OrderCustomer> OrderCustomers { get; set; }
    }
}
