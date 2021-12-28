using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApp.Areas.Identity.Data;
using WebApp.Models;
using System.Diagnostics;

namespace WebApp.Controllers
{
    public class UserController : Controller
    {
        //private readonly ILogger<HomeController> _logger;
        private readonly webContext _context;
        private readonly SignInManager<WebAppUser> _signInManager;
        private readonly UserManager<WebAppUser> _userManager;

        //public HomeController(ILogger<HomeController> logger,WebAppContext context)
        //{
        //    _logger = logger;
        //    _context = context;
        //}

        public UserController(UserManager<WebAppUser> userManager, SignInManager<WebAppUser> signInManager, webContext context)
        {
            _context = context;
            _userManager = userManager;
            _signInManager = signInManager;
        }
        public IActionResult UserRegister()
        {
            return View();
        }




        [HttpPost]
        public async Task<IActionResult> UserRegister(RegisterModel model, string returnUrl = null)
        {
            returnUrl ??= Url.Content("~/");
            //ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();
            if (ModelState.IsValid)
            {
                var user = new WebAppUser
                {
                    FirstName = model.FirstName,
                    LastName = model.LastName,
                    UserName = model.Email,
                    Email = model.Email
                };
                var result = await _userManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    return RedirectToAction("UserRegisterConfirm", new { email = model.Email, returnUrl = returnUrl });
                    //_logger.LogInformation("User created a new account with password.");

                    //var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                    //code = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(code));
                    //var callbackUrl = Url.Page(
                    //    "/Account/ConfirmEmail",
                    //    pageHandler: null,
                    //    values: new { area = "Identity", userId = user.Id, code = code, returnUrl = returnUrl },
                    //    protocol: Request.Scheme);

                    //await _emailSender.SendEmailAsync(Input.Email, "Confirm your email",
                    //    $"Please confirm your account by <a href='{HtmlEncoder.Default.Encode(callbackUrl)}'>clicking here</a>.");

                    //if (_userManager.Options.SignIn.RequireConfirmedAccount)
                    //{
                    //    return RedirectToPage("RegisterConfirmation", new { email = model.Email, returnUrl = returnUrl });
                    //}
                    //else
                    //{
                    //await _signInManager.SignInAsync(user, isPersistent: false);
                    //return LocalRedirect(returnUrl);
                    //}
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            // If we got this far, something failed, redisplay form

            return View();
        }
        public async Task<IActionResult> UserRegisterConfirm(string email, string returnUrl = null)
        {
            if (email == null)
            {
                return RedirectToAction("/Index");
            }

            var user = await _userManager.FindByEmailAsync(email);
            if (user == null)
            {
                return NotFound($"Unable to load user with email '{email}'.");
            }

            ViewBag.Email = email;
            // Once you add a real email sender, you should remove this code that lets you confirm the account
            ViewBag.DisplayConfirmAccountLink = true;
            if (ViewBag.DisplayConfirmAccountLink)
            {
                var userId = await _userManager.GetUserIdAsync(user);
                var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                code = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(code));
                ViewBag.EmailConfirmationUrl = Url.Page(
                    "/Account/ConfirmEmail",
                    pageHandler: null,
                    values: new { area = "Identity", userId = userId, code = code, returnUrl = returnUrl },
                    protocol: Request.Scheme);
            }
            return View();
        }
        public async Task<IActionResult> UserLogin(LoginModel model, string returnUrl = null)
        {
            returnUrl ??= Url.Content("~/");

            //ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

            if (ModelState.IsValid)
            {
                // This doesn't count login failures towards account lockout
                // To enable password failures to trigger account lockout, set lockoutOnFailure: true
                var result = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, lockoutOnFailure: false);
                if (result.Succeeded)
                {
                    //_logger.LogInformation("User logged in.");
                    return LocalRedirect(returnUrl);
                }
                if (result.RequiresTwoFactor)
                {
                    return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = model.RememberMe });
                }
                if (result.IsLockedOut)
                {
                    //_logger.LogWarning("User account locked out.");
                    return RedirectToPage("./Lockout");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Invalid login attempt.");
                    return View();
                }
            }

            return View();
        }


        public async Task<IActionResult> UserInformation(UserInformationModel model,InputModel Input, string returnUrl = null)
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return NotFound($"Unable to load user with ID '{_userManager.GetUserId(User)}'.");
            }

            var userName = await _userManager.GetUserNameAsync(user);
            var phoneNumber = await _userManager.GetPhoneNumberAsync(user);

            model.Username = userName;
            var temp = new UserInformationModel
            {
                Username = userName,
                FirstName = user.FirstName,
                LastName = user.LastName,
                PhoneNumber = phoneNumber
            };

            return View(temp);
        }
        
        [HttpPost]
        public async Task<IActionResult> UserInformation(UserInformationModel model)
        {
            var user = await _userManager.GetUserAsync(User);
            var phoneNumber = await _userManager.GetPhoneNumberAsync(user);
            if (model.PhoneNumber != phoneNumber)
            {
                var setPhoneResult = await _userManager.SetPhoneNumberAsync(user, model.PhoneNumber);
                if (!setPhoneResult.Succeeded)
                {
                    model.StatusMessage = "Unexpected error when trying to set phone number.";
                    return View();
                }
            }

            if (model.FirstName != user.FirstName)
            {
                user.FirstName = model.FirstName;
            }

            if (model.LastName != user.LastName)
            {
                user.LastName = model.LastName;
            }

            await _userManager.UpdateAsync(user);


            await _signInManager.RefreshSignInAsync(user);
            model.StatusMessage = "Your profile has been updated";
            return RedirectToAction("userinformation");
        }



    }
}
