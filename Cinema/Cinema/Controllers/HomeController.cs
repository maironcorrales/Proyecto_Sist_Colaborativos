using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cinema.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Single()
        {
            return View();
        }
        public ActionResult Reviews()
        {
            return View();
        }
        public ActionResult NotFound()
        {
            return View();
        }
        public ActionResult Videos()
        {
            return View();
        }
        public ActionResult LoginPage()
        {
            ViewBag.Message = "Login";
            return View();
        }
    }
}