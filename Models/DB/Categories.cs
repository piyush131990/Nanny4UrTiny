﻿using System;
using System.Collections.Generic;

namespace MVCManukauTech.Models.DB
{
    public partial class Categories
    {
        public Categories()
        {
            Products = new HashSet<Products>();
        }

        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string Imagefilename { get; set; }
        public ICollection<Products> Products { get; set; }
    }
}
