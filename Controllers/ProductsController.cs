using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MVCManukauTech.Models.DB;
using MVCManukauTech.Models.AccountViewModels;
using static System.Net.Mime.MediaTypeNames;
using System.Security.Claims;
using System.Web;
using MVCManukauTech.ViewModels;

namespace MVCManukauTech.Controllers
{
    public class ProductsController : Controller
    {
        private readonly XSpy4CoreContext _context;
        private readonly IHostingEnvironment _hostingEnvironment;
        public ProductsController(XSpy4CoreContext context, IHostingEnvironment hostingEnvironment)
        {
            _context = context;
            _hostingEnvironment = hostingEnvironment;
        }
        

        // GET: Products
        public IActionResult Index(int pageno)
        {
            int totalrow = 6;
            int procount = 0;
            HttpContext.Session.SetInt32("PCountIND", 0);
            int endrow = (pageno * totalrow); // cal end row number
            int startrow = (endrow - totalrow) + 1;  // cal start row number
            string sql1 = "select * from products";
            string sql = "SELECT  * FROM(SELECT ROW_NUMBER() OVER(ORDER BY Products.Name) AS RowNum, * FROM Products) AS RowConstrainedResult WHERE RowNum >= @p0 AND RowNum <= @p1 ORDER BY RowNum";
            List<Products> prd = _context.Products.FromSql(sql1).ToList();
            List<Products> products = _context.Products.FromSql(sql, startrow, endrow).ToList();
            procount = prd.Count();
            HttpContext.Session.SetInt32("PCountIND", procount);
            return View(products);
        }
        //Piyush Kapur
        public IActionResult EachProductDetails(int id, int pageno)
        {
            //if(User.Identity.IsAuthenticated==true)
            //{
                int totalrow = 6;
                int procount = 0;
                HttpContext.Session.SetInt32("PCount", 0);
                HttpContext.Session.SetInt32("CtId", 0);
                int endrow = (pageno * totalrow); // cal end row number
                int startrow = (endrow - totalrow) + 1;  // cal start row number
                string sql1 = "select * from products where categoryid=" + id;
                string sql = "SELECT  * " +
                    " FROM(SELECT    ROW_NUMBER() OVER(ORDER BY CategoryId) AS RowNum, * " +
                    " FROM      Products where CategoryId=" + id +
                    " ) AS RowConstrainedResult" +
                    " WHERE RowNum >= @p0" +
                    " AND RowNum <= @p1" +
                    " ORDER BY RowNum";
                List<Products> prd = _context.Products.FromSql(sql1).ToList();
                List<Products> products = _context.Products.FromSql(sql, startrow, endrow).ToList();
                procount = prd.Count();
                HttpContext.Session.SetInt32("PCount", procount);
                HttpContext.Session.SetInt32("CtId", id);
                return View(products);

            //}
            //else
            //{
            //    return RedirectToAction("Index","Home");
            //}
            

        }


        // GET: Products/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == "")
            {
                return NotFound();
            }

            var products = await _context.Products
                .Include(p => p.Category)
                .SingleOrDefaultAsync(m => m.ProductId == id);
            if (products == null)
            {
                return NotFound();
            }

            return View(products);
        }

        // GET: Products/Create
        public IActionResult Create()
        {
           // ViewData["CategoryId"] = new SelectList(_context.Categories, "CategoryId", "CategoryId");
            ViewData["CategoryName"] = new SelectList(_context.Categories, "CategoryId", "CategoryName");
            return View();
        }
        public IActionResult Chkupdate()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            string rdrd= "update TempCart set Payed='True' where Productnewid=(select TOP 1 Productnewid from TempCart where ProductId='" + HttpContext.Session.GetString("prdidd").ToString() + "' and ProductName='" + userId.ToString() + "' order by Id desc)";
            _context.Database.ExecuteSqlCommand(rdrd);
            return RedirectToAction("Index", "Home");
        }
        public IActionResult returntohome()
        {
            return RedirectToAction("Index", "Home");
        }
        public IActionResult Booking()
        {
            HttpContext.Session.SetString("prdprdid","");
            if (!String.IsNullOrEmpty(Request.Query["ids"].ToString()))
            {
                HttpContext.Session.SetString("prdidd", Request.Query["ids"].ToString());
            }
            string bookingdates = "select * from TempCart where ProductId='"+ HttpContext.Session.GetString("prdidd").ToString() + "' and Payed='True'";
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            string bookingdt = "select TOP 1 * from TempCart where ProductId='" + HttpContext.Session.GetString("prdidd").ToString() + "'and Payed is null  and ProductName='" + userId.ToString()+"' order by Id desc";
            string price = "select * from Products where ProductId='" + HttpContext.Session.GetString("prdidd").ToString() + "'";
            List<Products> products = _context.Products.FromSql(price).ToList();
            List<TempCart> tempCarts = _context.TempCart.FromSql(bookingdates).ToList();
            List<TempCart> tempCartss = _context.TempCart.FromSql(bookingdt).ToList();
            int count = products.Count;
            int cnttt = tempCarts.Count;
            int cntt = tempCartss.Count;
            if(cntt==0)
            {
                HttpContext.Session.SetString("checkalert", "unknown");
            }
            ViewData["bookinglist1"] = tempCartss;
            ViewData["bookinglist"] = tempCarts;
            ViewData["prizing"] = products.FirstOrDefault().Prize;
            if(string.IsNullOrEmpty(HttpContext.Session.GetString("checkalert") as string))
                {
                HttpContext.Session.SetString("checkalert", "wait");
            }
            //string test = ViewData["prizing"].ToString();
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Booking([Bind("ProductId,ProductName,Datebook,DateEnd,Productnewid,Payed")] TempCart temp)
        {
            
            string bookingdates1 = "select * from TempCart where ProductId='" + HttpContext.Session.GetString("prdidd").ToString() + "'and Payed='True'";

            List<TempCart> tempCarts1 = _context.TempCart.FromSql(bookingdates1).ToList();
            int count = tempCarts1.Count;
            HttpContext.Session.SetString("checkalert", "nill");
            foreach (var tot in tempCarts1)
            {
                
                if((temp.Datebook < tot.Datebook && temp.DateEnd < tot.Datebook)|| (temp.Datebook>tot.DateEnd && temp.DateEnd> tot.DateEnd))
                {
                    count--;
                    if(count==0)
                    {
                        if(temp.payed=="True")
                        {
                            temp.ProductId = HttpContext.Session.GetString("prdidd").ToString();
                            temp.Productnewid = Guid.NewGuid().ToString().Replace("-", "") + HttpContext.Session.GetString("prdidd").ToString();
                            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                            temp.ProductName = userId;
                            _context.Add(temp);
                            await _context.SaveChangesAsync();
                            HttpContext.Session.SetString("checkalert", "done");
                            string ha = HttpContext.Session.GetString("checkalert");
                            //TempData["bok"] = "<script>alert('Change succesfully');</script>";
                            return RedirectToAction("Booking", "Products", new { id = HttpContext.Session.GetString("prdprdid").ToString() });
                        }
                        else
                        {
                            HttpContext.Session.SetString("checkalert", "notdone");
                            //await Response.WriteAsync("");
                        }
                        
                    }
                    
                }
                else
                {
                    HttpContext.Session.SetString("checkalert", "notdone");
                    return RedirectToAction("Booking", "Products", new { ids = HttpContext.Session.GetString("prdprdid").ToString() });
                }
            }
            if(count==0)
            {
                temp.ProductId = HttpContext.Session.GetString("prdidd").ToString();
                temp.Productnewid = Guid.NewGuid().ToString().Replace("-", "") + (string)RouteData.Values["id"];
                var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                temp.ProductName = userId;
                _context.Add(temp);
                await _context.SaveChangesAsync();
                ViewBag.strtdate=temp.Datebook;
                ViewBag.enddate=temp.DateEnd;
                HttpContext.Session.SetString("checkalert", "done");
                string ha = HttpContext.Session.GetString("checkalert");
                //TempData["bok"] = "<script>alert('Change succesfully');</script>";
                return RedirectToAction("Booking", "Products", new { ids = temp.ProductId });
            }
            return RedirectToAction("Index", "Home");
        }
        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ProductId,CategoryId,Name,ImageFileName,UnitCost,Description,Password,pccImage,IdImage,FirstAidImage,Prize")] Products products)
        {
            if (ModelState.IsValid)
            {
                string sql1 = "select * from products where ProductId=" + "'" + products.ProductId + "'";
                List<Products> prd = _context.Products.FromSql(sql1).ToList();
                if (prd.Count == 0)
                {
                    var files = HttpContext.Request.Form.Files;
                    int i = 0;
                        foreach (var Image in files)
                        {
                        i++;
                            if (Image != null && Image.Length > 0)
                            {
                                var file = Image;
                                //There is an error here
                                var uploads = Path.Combine(_hostingEnvironment.WebRootPath, "images\\products");
                                if (file.Length > 0)
                                {
                                    var fileName = Guid.NewGuid().ToString().Replace("-", "") + Path.GetExtension(file.FileName);
                                    using (var fileStream = new FileStream(Path.Combine(uploads, fileName), FileMode.Create))
                                    {
                                        await file.CopyToAsync(fileStream);
                                        if (i==1)
                                        {
                                            products.ImageFileName = fileName;
                                        }
                                        else if (i == 2)
                                        {
                                            products.pccImage = fileName;
                                        }
                                        else if (i == 3)
                                        {
                                            products.IdImage = fileName;
                                        }
                                        else
                                        {
                                            products.FirstAidImage = fileName;
                                        }

                                    }

                                }
                            }
                        
                            
                        }

                    _context.Add(products);
                    await _context.SaveChangesAsync();
                    return RedirectToAction("Login", "Account");
                }
                else
                {
                    return RedirectToAction("Index", "Home");
                }
               
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "CategoryId", "CategoryId", products.CategoryId);
            return View(products);
        }

        // GET: Products/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if(HttpContext.Session.GetString("Nursemail").ToString()=="")
            {
                return RedirectToAction("Index", "Home");
            }
            if (id == "")
            {
                return NotFound();
            }

            var products = await _context.Products.SingleOrDefaultAsync(m => m.ProductId == id);
            if (products == null)
            {
                return NotFound();
            }
            if(products.Prize!=null)
            {
                HttpContext.Session.SetInt32("money", Convert.ToInt32(products.Prize));
            }
            if(products.pccImage!=null && products.IdImage!=null && products.ImageFileName!=null && products.FirstAidImage!=null)
            {
                HttpContext.Session.SetString("pccImage", products.pccImage);
                HttpContext.Session.SetString("IdImage", products.IdImage);
                HttpContext.Session.SetString("ImageFileName", products.ImageFileName);
                HttpContext.Session.SetString("FirstAidImage", products.FirstAidImage);
            }
            string unq = "select  ROW_NUMBER() OVER (ORDER BY TempCart.ProductId) as id,TempCart.Datebook,TempCart.DateEnd,TempCart.ProductId,TempCart.ProductName,TempCart.UserId,TempCart.ProductCount,Aspnetusers.Email,AspNetUsers.PhoneNumber from tempCart left join Aspnetusers on tempCart.ProductName = Aspnetusers.Id  where TempCart.ProductId='" + HttpContext.Session.GetString("Nursmail").ToString() + "' and Payed='True'";
            List<QueryfortempanduserViewModel> tempCarts = _context.QueryfortempanduserViewModel.FromSql(unq).ToList();
            ViewData["countbook"] = tempCarts.Count;
            ViewData["bookdropdown"] = tempCarts;

            ViewData["CategoryId"] = new SelectList(_context.Categories, "CategoryId", "CategoryName", products.CategoryId);
            return View(products);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("ProductId,CategoryId,Name,UnitCost,Description,pccImage,IdImage,FirstAidImage,ImageFileName,Password,Prize")] Products products)
        {
            id = HttpContext.Session.GetString("Nursemail").ToString();
            if (id != products.ProductId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    var files = HttpContext.Request.Form.Files;
                    int i = 0;
                    foreach (var Image in files)
                    {
                        i++;
                        if (Image != null && Image.Length > 0)
                        {
                            var file = Image;
                            //There is an error here
                            var uploads = Path.Combine(_hostingEnvironment.WebRootPath, "images\\products");
                            if (file.Length > 0)
                            {
                                var fileName = Guid.NewGuid().ToString().Replace("-", "") + Path.GetExtension(file.FileName);
                                using (var fileStream = new FileStream(Path.Combine(uploads, fileName), FileMode.Create))
                                {
                                    await file.CopyToAsync(fileStream);
                                    if (i == 1)
                                    {
                                        products.ImageFileName = fileName;
                                    }
                                    else if (i == 2)
                                    {
                                        products.pccImage = fileName;
                                    }
                                    else if (i == 3)
                                    {
                                        products.IdImage = fileName;
                                    }
                                    else
                                    {
                                        products.FirstAidImage = fileName;
                                    }

                                }

                            }
                        }
                        else
                        {
                            if(i==1)
                            {
                                products.ImageFileName = HttpContext.Session.GetString("ImageFileName").ToString();
                            }
                            else if(i==2)
                            {
                                products.pccImage = HttpContext.Session.GetString("pccImage").ToString();
                            }
                            else if(i==3)
                            {
                                products.IdImage = HttpContext.Session.GetString("IdImage").ToString();
                            }
                            else
                            {
                                products.FirstAidImage = HttpContext.Session.GetString("FirstAidImage").ToString();
                            }
                           
                            
                           
                        }
                    }
                    products.ProductId = HttpContext.Session.GetString("Nursmail").ToString();
                    products.Password = HttpContext.Session.GetString("NursePass").ToString();
                    if (products.Prize == null)
                    {
                        products.Prize = HttpContext.Session.GetInt32("money").Value;
                    }
                   
                    _context.Update(products);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductsExists(products.ProductId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("Index","Home");
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "CategoryId", "CategoryName", products.CategoryId);
            return RedirectToAction("Index", "Home");
        }

        // GET: Products/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == "")
            {
                return NotFound();
            }

            var products = await _context.Products
                .Include(p => p.Category)
                .SingleOrDefaultAsync(m => m.ProductId == id);
            if (products == null)
            {
                return NotFound();
            }

            return View(products);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var products = await _context.Products.SingleOrDefaultAsync(m => m.ProductId == id);
            _context.Products.Remove(products);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductsExists(string id)
        {
            return _context.Products.Any(e => e.ProductId == id);
        }
    }
}
