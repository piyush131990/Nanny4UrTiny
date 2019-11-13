using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MVCManukauTech.ViewModels
{
    public class QueryfortempanduserViewModel
    {
        [Key]
        public Int64 id { get; set; }
        public DateTime Datebook { get; set; }
        public DateTime DateEnd { get; set; }
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
    }
}
