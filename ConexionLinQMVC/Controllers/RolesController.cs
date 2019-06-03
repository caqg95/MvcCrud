﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ConexionLinQMVC.Models;

namespace AsistenciaMVC.Controllers
{
  //  [Authorize(Roles = "Administrador")]
    public class RolesController : Controller
    {
        ApplicationDbContext db = new ApplicationDbContext();
        // private BDAsistenciaMVCEntities db = new BDAsistenciaMVCEntities();

        public ActionResult Index()
        {
            var roles = db.Roles.ToList();
            return View(roles);
        }

        //
        // GET: /Roles/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Roles/Create
        [HttpPost]

        public ActionResult Create(FormCollection collection)
        {
            try
            {
                db.Roles.Add(new Microsoft.AspNet.Identity.EntityFramework.IdentityRole()
                {
                    Name = collection["RoleName"]
                });
                db.SaveChanges();
                ViewBag.ResultMessage = "Role created successfully !";
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Roles/Edit/5
        public ActionResult Edit(string roleName)
        {
            var thisRole = db.Roles.Where(r => r.Name.Equals(roleName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();

            return View(thisRole);
        }

        //
        // POST: /Roles/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Microsoft.AspNet.Identity.EntityFramework.IdentityRole role)
        {
            try
            {
                db.Entry(role).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Roles/Delete/5
        public ActionResult Delete(string RoleName)
        {
            var thisRole = db.Roles.Where(r => r.Name.Equals(RoleName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            db.Roles.Remove(thisRole);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult ManageUserRoles()
        {
            var UserList = db.Users.OrderBy(u => u.UserName).ToList().Select(u => new SelectListItem { Value = u.Id.ToString(), Text = u.UserName }).ToList();
            var RoleList = db.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Users = UserList;
            ViewBag.Roles = RoleList;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RoleAddToUser(string UserName, string RoleName)
        {

            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(db));
            var users = userManager.Users.ToList();
            var user = users.Find(u => u.Id == UserName);

            var roles = roleManager.Roles.ToList();
            var role = roles.Find(r => r.Name == RoleName);
            if (user != null && role != null)
            {
                userManager.AddToRole(UserName, RoleName);

                ViewBag.ResultMessage = "Role created successfully !";
            }

            // prepopulat roles for the view dropdown

            var UserList = db.Users.OrderBy(u => u.UserName).ToList().Select(u => new SelectListItem { Value = u.Id.ToString(), Text = u.UserName }).ToList();
            var RoleList = db.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Users = UserList;
            ViewBag.Roles = RoleList;

            return View("ManageUserRoles");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GetRoles(string UserName)
        {
            if (!string.IsNullOrWhiteSpace(UserName))
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var UserList = db.Users.OrderBy(u => u.UserName).ToList().Select(u => new SelectListItem { Value = u.Id.ToString(), Text = u.UserName }).ToList();
                ViewBag.Users = UserList;
                ViewBag.RolesForThisUser = userManager.GetRoles(UserName);

                // prepopulat roles for the view dropdown
                var list = db.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
                ViewBag.Roles = list;
            }

            return View("ManageUserRoles");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteRoleForUser(string UserName, string RoleName)
        {
            if (string.IsNullOrEmpty(UserName) || string.IsNullOrEmpty(RoleName))
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(db));

            var user = userManager.Users.ToList().Find(u => u.Id == UserName);
            var role = roleManager.Roles.ToList().Find(r => r.Name == RoleName);
            if (userManager.IsInRole(user.Id, role.Name))
            {
                userManager.RemoveFromRole(user.Id, role.Name);
                ViewBag.DeleteResult = "Role removed from this user successfully !";
            }

            else
            {
                ViewBag.DeleteResult = "This user doesn't belong to selected role.";
            }
            // prepopulat roles for the view dropdown


            var UserList = db.Users.OrderBy(u => u.UserName).ToList().Select(u => new SelectListItem { Value = u.Id.ToString(), Text = u.UserName }).ToList();
            var RoleList = userManager.GetRoles(UserName).ToList();

            ViewBag.Users = UserList;
            ViewBag.Roles = RoleList;
            return View("ManageUserRoles");
        }

    }
}