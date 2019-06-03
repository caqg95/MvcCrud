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
//    [Authorize(Roles = "Administrador")]
    public class TipoJustificacionsController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        // GET: TipoJustificacions
        public ActionResult Index()
        {
            return View(db.tblTipoJustificacion.ToList());
        }

        // GET: TipoJustificacions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTipoJustificacion tblTipoJustificacion = db.tblTipoJustificacion.Find(id);
            if (tblTipoJustificacion == null)
            {
                return HttpNotFound();
            }
            return View(tblTipoJustificacion);
        }

        // GET: TipoJustificacions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TipoJustificacions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdJustificacion,Justificacion")] tblTipoJustificacion tblTipoJustificacion)
        {
            if (ModelState.IsValid)
            {
                db.tblTipoJustificacion.Add(tblTipoJustificacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblTipoJustificacion);
        }

        // GET: TipoJustificacions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTipoJustificacion tblTipoJustificacion = db.tblTipoJustificacion.Find(id);
            if (tblTipoJustificacion == null)
            {
                return HttpNotFound();
            }
            return View(tblTipoJustificacion);
        }

        // POST: TipoJustificacions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdJustificacion,Justificacion")] tblTipoJustificacion tblTipoJustificacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblTipoJustificacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblTipoJustificacion);
        }

        // GET: TipoJustificacions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTipoJustificacion tblTipoJustificacion = db.tblTipoJustificacion.Find(id);
            if (tblTipoJustificacion == null)
            {
                return HttpNotFound();
            }
            return View(tblTipoJustificacion);
        }

        // POST: TipoJustificacions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblTipoJustificacion tblTipoJustificacion = db.tblTipoJustificacion.Find(id);
            db.tblTipoJustificacion.Remove(tblTipoJustificacion);
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
