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
//using System.Diagnostics;
namespace WebApp.Controllers
{
    public class HomeController : Controller
    {
        public UserManager<Areas.Identity.Data.WebAppUser> UserManager;
        // Key lưu chuỗi json của Cart
        public const string CARTKEY = "cart";
        //private readonly ILogger<HomeController> _logger;
        private readonly webContext _context;
        public UserManager<Areas.Identity.Data.WebAppUser> _user;

        //public HomeController(ILogger<HomeController> logger,WebAppContext context)
        //{
        //    _logger = logger;
        //    _context = context;
        //}
        public HomeController(webContext context, Microsoft.AspNetCore.Identity.UserManager<WebApp.Areas.Identity.Data.WebAppUser> userManager)
        {
            _user = userManager;
            _context = context;
        }


        public IActionResult Index()
        {
            List<Product> product = _context.Products.Where(p=>p.CategoryId ==4 || p.CategoryId == 5).OrderByDescending(x => x.Id).Take(6).ToList();


            return View(product);
        }

        // Lấy cart từ Session (danh sách CartItem)
        List<CartItem> GetCartItems()
        {
            var session = HttpContext.Session;
            string jsoncart = session.GetString(CARTKEY);
            if (jsoncart != null)
            {
                List<CartItem> temp = JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
                return temp;
            }
            return new List<CartItem>();
        }

        // Xóa cart khỏi session
        void ClearCart()
        {
            var session = HttpContext.Session;
            session.Remove(CARTKEY);
        }

        // Lưu Cart (Danh sách CartItem) vào session
        void SaveCartSession(List<CartItem> ls)
        {
            var session = HttpContext.Session;
            string jsoncart = JsonConvert.SerializeObject(ls);
            session.SetString(CARTKEY, jsoncart);
        }


        /// Thêm sản phẩm vào cart
        [Route("cart/addcart/{productid:int}")]
        public IActionResult AddToCart([FromRoute] int productid)
        {
            var product = _context.Products
                        .Where(p => p.Id == productid)
                        .FirstOrDefault();
            if (product == null)
                return NotFound("Không có sản phẩm");
            // Xử lý đưa vào Cart ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.quantity++;
            }
            else
            {
                //  Thêm mới
                cart.Add(new CartItem() { quantity = 1, product = product });
            }

            // Lưu cart vào Session
            SaveCartSession(cart);

            //return RedirectToAction(nameof(Cart));
            return RedirectToAction("", "home");
        }

        /// xóa item trong cart
        [Route("cart/removecart/{productid:int}", Name = "removecart")]
        public IActionResult RemoveCart([FromRoute] int productid)
        {
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cart.Remove(cartitem);
            }

            SaveCartSession(cart);

            // Xử lý xóa một mục của Cart ...
            return RedirectToAction("", "cart");
        }

        /// Cập nhật
        [Route("cart/updatecart", Name = "updatecart")]
        [HttpPost]
        public IActionResult UpdateCart([FromForm] int productid, [FromForm] int quantity)
        {
            // Cập nhật Cart thay đổi số lượng quantity ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.quantity = quantity;
            }
            SaveCartSession(cart);
            // Trả về mã thành công (không có nội dung gì - chỉ để Ajax gọi)
            return Ok();

        }

        // Hiện thị giỏ hàng
        [Route("/cart", Name = "cart")]
        public IActionResult Cart()
        {
            return View(GetCartItems());
        }

        [Route("cart/checkout")]
        public IActionResult CheckOut()
        {

            //Debug.WriteLine(_user.GetUserId(User));
            var user = _user.GetUserId(User);
            if (user == null)
            {

            }
            else
            {
                int? total = 0;
                var temp = GetCartItems();
                for (int i = 0; i < temp.Count(); i++)
                {
                    var thanhtien = temp[i].quantity * temp[i].product.Price;
                    total += thanhtien;
                }
                var uid = _user.GetUserId(User);
                // Xử lý khi đặt hàng
                var date = (DateTime.Now).ToString();
                Order order = new Order()
                {
                    OrderDate = date,
                    Total = total,
                    Status = 1,
                    CustomerId = uid,
                    ShipAddress = "testing address",
                    Phone = 123456,
                };
                _context.Orders.Add(order);
                _context.SaveChanges();
                for (int i = 0; i < temp.Count(); i++)
                {
                    OrderDetail orderdetail = new OrderDetail()
                    {
                        ProductId = temp[i].product.Id,
                        Quanlity = temp[i].quantity,
                        Price = temp[i].product.Price,
                        OrderId = order.Id,


                    };
                    _context.OrderDetails.Add(orderdetail);
                }

                _context.SaveChanges();
            }


            //Debug.WriteLine(temp.Name);
            // with type parameter

            //_context.Products.Add(new Product { CategoryId = 1 });
            //_context.
            return RedirectToAction("", "cart");
        }


        public IActionResult Privacy()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
