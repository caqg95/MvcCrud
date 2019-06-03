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
    public class EmpleadosController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        // GET: Empleados
        public ActionResult Index()
        {
            var tblEmpleados = db.tblEmpleados.Include(t => t.tblDepartamento).Include(t => t.tblTurnos);
            return View(tblEmpleados.ToList());
        }

        // GET: Empleados/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleados tblEmpleados = db.tblEmpleados.Find(id);
            if (tblEmpleados == null)
            {
                return HttpNotFound();
            }
            return View(tblEmpleados);
        }

        // GET: Empleados/Create
        public ActionResult Create()
        {
            ViewBag.IdDepartamento = new SelectList(db.tblDepartamento, "IdDepartamento", "Departamento");
            ViewBag.IdTurno = new SelectList(db.tblTurnos, "IdTurno", "Turno");
            return View();
        }

        // POST: Empleados/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEmpleados,Nombres,Activo,IdDepartamento,IdTurno,Salario,DiaLibre")] tblEmpleados tblEmpleados)
        {
            if (ModelState.IsValid)
            {
                db.tblEmpleados.Add(tblEmpleados);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdDepartamento = new SelectList(db.tblDepartamento, "IdDepartamento", "Departamento", tblEmpleados.IdDepartamento);
            ViewBag.IdTurno = new SelectList(db.tblTurnos, "IdTurno", "Turno", tblEmpleados.IdTurno);
            return View(tblEmpleados);
        }

        // GET: Empleados/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleados tblEmpleados = db.tblEmpleados.Find(id);
            if (tblEmpleados == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdDepartamento = new SelectList(db.tblDepartamento, "IdDepartamento", "Departamento", tblEmpleados.IdDepartamento);
            ViewBag.IdTurno = new SelectList(db.tblTurnos, "IdTurno", "Turno", tblEmpleados.IdTurno);
            return View(tblEmpleados);
        }

        // POST: Empleados/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEmpleados,Nombres,Activo,IdDepartamento,IdTurno,Salario,DiaLibre")] tblEmpleados tblEmpleados)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblEmpleados).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdDepartamento = new SelectList(db.tblDepartamento, "IdDepartamento", "Departamento", tblEmpleados.IdDepartamento);
            ViewBag.IdTurno = new SelectList(db.tblTurnos, "IdTurno", "Turno", tblEmpleados.IdTurno);
            return View(tblEmpleados);
        }

        // GET: Empleados/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblEmpleados tblEmpleados = db.tblEmpleados.Find(id);
            if (tblEmpleados == null)
            {
                return HttpNotFound();
            }
            return View(tblEmpleados);
        }

        // POST: Empleados/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tblEmpleados tblEmpleados = db.tblEmpleados.Find(id);
            db.tblEmpleados.Remove(tblEmpleados);
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
