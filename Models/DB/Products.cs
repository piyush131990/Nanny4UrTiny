using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MVCManukauTech.Models.DB
{
    public partial class Products
    {
        public string ProductId { get; set; }
        public int? CategoryId { get; set; }
        public string Name { get; set; }
        public string ImageFileName { get; set; }
        public double? UnitCost { get; set; }
        public int? Prize { get; set; }
        public string Description { get; set; }
        public string pccImage { get; set; }
        public string IdImage { get; set; }
        public string FirstAidImage { get; set; }
        //public bool IsDownload { get; set; }
        //public string DownloadFileName { get; set; }
        //public string CategoryName { get; set; }
        [DataType(DataType.Password)]
        public string Password { get; set; }
        public Categories Category { get; set; }
    }
}
