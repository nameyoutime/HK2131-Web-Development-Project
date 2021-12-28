using WebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
namespace WebApp.ViewComponents
{
    public class CategoryListViewComponent : ViewComponent
    {
        private readonly webContext _context;

        public CategoryListViewComponent(webContext context)
        {
            _context = context;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            List<Category> cate = await _context.Categories.ToListAsync();
            return View(cate);
        }
    }
}
