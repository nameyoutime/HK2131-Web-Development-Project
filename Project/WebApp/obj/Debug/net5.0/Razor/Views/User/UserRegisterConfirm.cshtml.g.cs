#pragma checksum "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "69d6b2089de3767861abf41cafce06b30e4cbcc4"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_User_UserRegisterConfirm), @"mvc.1.0.view", @"/Views/User/UserRegisterConfirm.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\ad\source\repos\WebApp\Views\_ViewImports.cshtml"
using WebApp;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\ad\source\repos\WebApp\Views\_ViewImports.cshtml"
using WebApp.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"69d6b2089de3767861abf41cafce06b30e4cbcc4", @"/Views/User/UserRegisterConfirm.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"05cdf03120ef912da27fb9da8fdea59019dd5a81", @"/Views/_ViewImports.cshtml")]
    public class Views_User_UserRegisterConfirm : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<h1>");
#nullable restore
#line 6 "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml"
Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n");
#nullable restore
#line 7 "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml"
  
    if (@ViewBag.DisplayConfirmAccountLink)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <p>\r\n");
            WriteLiteral("            <a id=\"confirm-link\"");
            BeginWriteAttribute("href", " href=\"", 492, "\"", 528, 1);
#nullable restore
#line 13 "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml"
WriteAttributeValue("", 499, ViewBag.EmailConfirmationUrl, 499, 29, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Click here to confirm your account</a>\r\n        </p>\r\n");
#nullable restore
#line 15 "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml"
    }
    else
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <p>\r\n            Please check your email to confirm your account.\r\n        </p>\r\n");
#nullable restore
#line 21 "C:\Users\ad\source\repos\WebApp\Views\User\UserRegisterConfirm.cshtml"
    }

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
