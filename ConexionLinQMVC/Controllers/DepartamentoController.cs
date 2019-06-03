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
    public class DepartamentoController : Controller
    {
        private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        // GET: Departamento
        public ActionResult Index()
        {
            return View(db.tblDepartamento.ToList());
        }

        // GET: Departamento/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblDepartamento tblDepartamento = db.tblDepartamento.Find(id);
            if (tblDepartamento == null)
            {
                return HttpNotFound();
            }
            return View(tblDepartamento);
        }

        // GET: Departamento/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Departamento/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdDepartamento,Departamento")] tblDepartamento tblDepartamento)
        {
            if (ModelState.IsValid)
            {
                db.tblDepartamento.Add(tblDepartamento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblDepartamento);
        }

        // GET: Departamento/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblDepartamento tblDepartamento = db.tblDepartamento.Find(id);
            if (tblDepartamento == null)
            {
                return HttpNotFound();
            }
            return View(tblDepartamento);
        }

        // POST: Departamento/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdDepartamento,Departamento")] tblDepartamento tblDepartamento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblDepartamento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblDepartamento);
        }

        // GET: Departamento/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    tblDepartamento tblDepartamento = db.tblDepartamento.Find(id);
        //    if (tblDepartamento == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tblDepartamento);
        //}

        // POST: Departamento/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public ActionResult Delete(int id)
        {
            try
            {
                tblDepartamento tblDepartamento = db.tblDepartamento.Find(id);
                db.tblDepartamento.Remove(tblDepartamento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch(Exception)
            {

                return RedirectToAction("Index");
            }

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
