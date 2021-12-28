using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
namespace WebApp.Controllers
{
    [Authorize(Roles ="Admin")]
    public class TestController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult TestMatch()
        {
            return View();
        }
    }
}
