using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MVCManukauTech.Models.DB
{
    public class TempCart
    {
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string UserId { get; set; }
        public int ProductCount { get; set; }
        public DateTime Datebook { get; set; }
        public DateTime DateEnd { get; set; }
        public string Productnewid { get; set; }
        public string payed { get; set; }
        
    }
}
