using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ConexionLinQMVC.Data;

namespace ConexionLinQMVC.Controllers
{
   // [Authorize(Roles = "Administrador")]
    public class JustificacionPersonalsController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        // GET: JustificacionPersonals
        public ActionResult Index()
        {
            var tblJustificacionPersonal = db.tblJustificacionPersonal.Include(t => t.tblDias).Include(t => t.tblEmpleados).Include(t => t.tblTipoJustificacion);
            return View(tblJustificacionPersonal.ToList());
        }

        // GET: JustificacionPersonals/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblJustificacionPersonal tblJustificacionPersonal = db.tblJustificacionPersonal.Find(id);
            if (tblJustificacionPersonal == null)
            {
                return HttpNotFound();
            }
            return View(tblJustificacionPersonal);
        }

        // GET: JustificacionPersonals/Create
        public ActionResult Create()
        {
            ViewBag.IdDias = new SelectList(db.tblDias, "IdDias", "IdDias");
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres");
            ViewBag.IdJustificacion = new SelectList(db.tblTipoJustificacion, "IdJustificacion", "Justificacion");
            return View();
        }

        // POST: JustificacionPersonals/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEmpleados,IdJustificacion,FechaI,FechaF,IdDias,Observaciones")] tblJustificacionPersonal tblJustificacionPersonal)
        {
            if (ModelState.IsValid)
            {
                db.tblJustificacionPersonal.Add(tblJustificacionPersonal);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdDias = new SelectList(db.tblDias, "IdDias", "IdDias", tblJustificacionPersonal.IdDias);
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblJustificacionPersonal.IdEmpleados);
            ViewBag.IdJustificacion = new SelectList(db.tblTipoJustificacion, "IdJustificacion", "Justificacion", tblJustificacionPersonal.IdJustificacion);
            return View(tblJustificacionPersonal);
        }

        // GET: JustificacionPersonals/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblJustificacionPersonal tblJustificacionPersonal = db.tblJustificacionPersonal.Find(id);
            if (tblJustificacionPersonal == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdDias = new SelectList(db.tblDias, "IdDias", "IdDias", tblJustificacionPersonal.IdDias);
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblJustificacionPersonal.IdEmpleados);
            ViewBag.IdJustificacion = new SelectList(db.tblTipoJustificacion, "IdJustificacion", "Justificacion", tblJustificacionPersonal.IdJustificacion);
            return View(tblJustificacionPersonal);
        }

        // POST: JustificacionPersonals/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEmpleados,IdJustificacion,FechaI,FechaF,IdDias,Observaciones")] tblJustificacionPersonal tblJustificacionPersonal)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblJustificacionPersonal).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdDias = new SelectList(db.tblDias, "IdDias", "IdDias", tblJustificacionPersonal.IdDias);
            ViewBag.IdEmpleados = new SelectList(db.tblEmpleados, "IdEmpleados", "Nombres", tblJustificacionPersonal.IdEmpleados);
            ViewBag.IdJustificacion = new SelectList(db.tblTipoJustificacion, "IdJustificacion", "Justificacion", tblJustificacionPersonal.IdJustificacion);
            return View(tblJustificacionPersonal);
        }

        // GET: JustificacionPersonals/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblJustificacionPersonal tblJustificacionPersonal = db.tblJustificacionPersonal.Find(id);
            if (tblJustificacionPersonal == null)
            {
                return HttpNotFound();
            }
            return View(tblJustificacionPersonal);
        }

        // POST: JustificacionPersonals/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblJustificacionPersonal tblJustificacionPersonal = db.tblJustificacionPersonal.Find(id);
            db.tblJustificacionPersonal.Remove(tblJustificacionPersonal);
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
