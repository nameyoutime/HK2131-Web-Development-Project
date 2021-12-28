using System;
using System.Collections.Generic;

#nullable disable

namespace WebApp.Models
{
    public partial class Order
    {
        public Order()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int Id { get; set; }
        public string OrderDate { get; set; }
        public int? Total { get; set; }
        public int? Status { get; set; }
        public string CustomerId { get; set; }
        public string ShipAddress { get; set; }
        public int? Phone { get; set; }

        public virtual AspNetUser Customer { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
