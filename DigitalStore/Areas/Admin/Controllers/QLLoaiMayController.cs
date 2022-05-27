using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DigitalStore.Models;

namespace DigitalStore.Areas.Admin.Controllers
{
    public class QLLoaiMayController : Controller
    {
        MyDataDataContext db = new MyDataDataContext();
        // GET: Admin/QLLoaiMay
        public ActionResult Index()
        {
            return View(db.LOAIMAYs.ToList());
        }
    }
}