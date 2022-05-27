using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DigitalStore.Models;
using PagedList;
using PagedList.Mvc;

namespace DigitalStore.Controllers
{
    public class SanPhamBanController : Controller
    {
        // GET: SanPhamBan
        MyDataDataContext db = new MyDataDataContext();
        public ActionResult Index(int? page)
        {
            //ViewBag.MacDinh = db.SANPHAMs.ToList();
            //ViewBag.Moi = db.SANPHAMs.ToList().OrderBy(n => n.NGAYCAPNHAT);
            //ViewBag.GiaCao = db.SANPHAMs.ToList().OrderByDescending(n => n.GIAGIAM);
            //ViewBag.GiaThap = db.SANPHAMs.ToList().OrderBy(n => n.GIAGIAM);
            int pageSize = 6;
            int pageNum = (page ?? 1);
            return View(db.SANPHAMs.ToPagedList(pageNum, pageSize));
        }
        public ActionResult HangMay()
        {
            var hangmay = from hang in db.NHACUNGCAPs select hang;
            return PartialView(hangmay);
        }
        public ActionResult LoaiMay()
        {
            var loaimay = from loai in db.LOAIMAYs select loai;
            return PartialView(loaimay);
        }
        public ActionResult SPTheoHang(int id, int? page)
        {
            int pageSize = 6;
            int pageNum = (page ?? 1);
            var sanpham = from sp in db.SANPHAMs where sp.MASANPHAM == id select sp;
            return View(sanpham.ToPagedList(pageNum, pageSize));
        }
        public ActionResult SPTheoLoai(int id, int? page)
        {
            int pageSize = 6;
            int pageNum = (page ?? 1);
            var sanpham = from sp in db.SANPHAMs where sp.MASANPHAM == id select sp; ;
            return View(sanpham.ToPagedList(pageNum, pageSize));
        }
    }
}