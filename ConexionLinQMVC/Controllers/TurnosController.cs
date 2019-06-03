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
    public class TurnosController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        // GET: Turnos
        public ActionResult Index()
        {
            return View(db.tblTurnos.ToList());
        }

        // GET: Turnos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTurnos tblTurnos = db.tblTurnos.Find(id);
            if (tblTurnos == null)
            {
                return HttpNotFound();
            }
            return View(tblTurnos);
        }

        // GET: Turnos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Turnos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdTurno,Turno,Lunes_Sabado_Inicio,Lunes_Sabado_Fin,HorasAlmuerzo,Almuerzo_Inicio,Almuerzo_Fin")] tblTurnos tblTurnos)
        {
            if (ModelState.IsValid)
            {
                db.tblTurnos.Add(tblTurnos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblTurnos);
        }

        // GET: Turnos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTurnos tblTurnos = db.tblTurnos.Find(id);
            if (tblTurnos == null)
            {
                return HttpNotFound();
            }
            return View(tblTurnos);
        }

        // POST: Turnos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdTurno,Turno,Lunes_Sabado_Inicio,Lunes_Sabado_Fin,HorasAlmuerzo,Almuerzo_Inicio,Almuerzo_Fin")] tblTurnos tblTurnos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblTurnos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblTurnos);
        }

        // GET: Turnos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTurnos tblTurnos = db.tblTurnos.Find(id);
            if (tblTurnos == null)
            {
                return HttpNotFound();
            }
            return View(tblTurnos);
        }

        // POST: Turnos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblTurnos tblTurnos = db.tblTurnos.Find(id);
            db.tblTurnos.Remove(tblTurnos);
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
