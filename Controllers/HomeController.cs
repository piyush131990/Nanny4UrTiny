using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVCManukauTech.Models;
using MVCManukauTech.Models.DB;
using MVCManukauTech.ViewModels;

namespace MVCManukauTech.Controllers
{
    public class HomeController : Controller
    {
        private readonly XSpy4CoreContext _context;

        public HomeController(XSpy4CoreContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            //Piyush Kapur
            //For showing Category Listing on Home view
            string sql = "select * from Categories";
            List<Categories> categories = _context.Categories.FromSql(sql).ToList();
            return View(categories);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
