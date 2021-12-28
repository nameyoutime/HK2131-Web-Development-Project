using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;

namespace WebApp.Controllers
{
    public class ProductController : Controller
    {
        private readonly webContext _context;

        public ProductController(webContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult List(int id)
        {
            List<Product> productList = _context.Products.Where(p => p.CategoryId == id).ToList();
            return View(productList);
        }
        public IActionResult Detail(int id)
        {
            Product product = _context.Products.Find(id);
            return View(product);
        }

    }
}
