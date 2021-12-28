using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;
using System.Diagnostics;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;

namespace WebApp.Controllers
{
    public class HistoryController : Controller
    {
        private readonly webContext _context;
        public UserManager<Areas.Identity.Data.WebAppUser> _user;

        public HistoryController(webContext context, Microsoft.AspNetCore.Identity.UserManager<WebApp.Areas.Identity.Data.WebAppUser> userManager)
        {
            _user = userManager;
            _context = context;
        }
        public IActionResult Index()
        {
            var userId = _user.GetUserId(User);
            if (userId == null)
            {
                return Redirect("user/userlogin");
            }
            List<Order> orderList = _context.Orders.Where(o => o.CustomerId == userId).ToList();


            return View(orderList);
        }
    }
}
