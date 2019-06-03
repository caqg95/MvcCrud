using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ConexionLinQMVC.Data;
namespace ConexionLinQMVC.Controllers
{
   // [Authorize(Roles = "Administrador")]
    public class MarcasController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();
        public  JsonResult GetMarcas()
        {
            var marcaE = (from Marca in db.tblRegistroMarcas join 
                               Empleado in db.tblEmpleados on Marca.IdEmpleados equals Empleado.IdEmpleados
                          select new
                          {
                              Marca.IdEmpleados,
                              Empleado.Nombres,
                              Marca.H_Ent1,
                              Marca.H_Sal2
                        });
            return Json(marcaE, JsonRequestBehavior.AllowGet);
        }
        // GET: Marcas
        public ActionResult Index()
        {
            var tblRegistroMarcas = db.tblRegistroMarcas.Include(t => t.tblEmpleados);
            return View(tblRegistroMarcas.ToList());
        }

        // GET: Marcas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblRegistroMarcas tblRegistroMarcas = db.tblRegistroMarcas.Find(id);
            if (tblRegistroMarcas == null)
            {
                return HttpNotFound();
            }
            return View(tblRegistroMarcas);
        }

        // GET: Marcas/Create
        public ActionResult Create()
        {
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres");
            return View();
        }

        // POST: Marcas/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEmpleados,Fecha,H_Ent1,H_Sal1,H_Ent2,H_Sal2")] tblRegistroMarcas tblRegistroMarcas)
        {
            if (ModelState.IsValid)
            {
                db.tblRegistroMarcas.Add(tblRegistroMarcas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblRegistroMarcas.IdEmpleados);
            return View(tblRegistroMarcas);
        }

        // GET: Marcas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblRegistroMarcas tblRegistroMarcas = db.tblRegistroMarcas.Find(id);
            if (tblRegistroMarcas == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblRegistroMarcas.IdEmpleados);
            return View(tblRegistroMarcas);
        }

        // POST: Marcas/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEmpleados,Fecha,H_Ent1,H_Sal1,H_Ent2,H_Sal2")] tblRegistroMarcas tblRegistroMarcas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblRegistroMarcas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblRegistroMarcas.IdEmpleados);
            return View(tblRegistroMarcas);
        }

        // GET: Marcas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblRegistroMarcas tblRegistroMarcas = db.tblRegistroMarcas.Find(id);
            if (tblRegistroMarcas == null)
            {
                return HttpNotFound();
            }
            return View(tblRegistroMarcas);
        }

        // POST: Marcas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblRegistroMarcas tblRegistroMarcas = db.tblRegistroMarcas.Find(id);
            db.tblRegistroMarcas.Remove(tblRegistroMarcas);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
