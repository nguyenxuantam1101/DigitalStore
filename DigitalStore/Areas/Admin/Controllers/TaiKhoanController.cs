using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using DigitalStore.Models;

namespace DigitalStore.Areas.Admin.Controllers
{
    public class TaiKhoanController : Controller
    {
        MyDataDataContext db = new MyDataDataContext();
        // GET: Admin/TaiKhoan
        public ActionResult Index(int? page)
        {
            int pageNum = (page ?? 1);
            int pageSize = 10;
            return View(db.NGUOIDUNGs.Where(model => model.MAQUYEN != 0).ToList().ToPagedList(pageNum, pageSize));
        }
    }
}