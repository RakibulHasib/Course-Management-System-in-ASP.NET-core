using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_work.Models;
using Project_work.Models.ViewModel;
using System.Data;
using static Project_work.Models.DbModels;

namespace Project_work.Controllers
{
    [Authorize(Roles = "Admin,Stuff")]
    public class CourseController : Controller
    {
        private readonly CourseDbContext _context;

        public CourseController(CourseDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View(_context.Courses.Include(x => x.CourseTitle).ToList());
        }
        public IActionResult Create()
        {
            ViewBag.CourseTitleId = new SelectList(_context.CourseTitles.ToList(), "CourseTitleId", "CourseTitleName");
            return View();
        }
        [HttpPost]
        public IActionResult Create(Course course)
        {
            if (ModelState.IsValid)
            {
                Course course1 = new Course()
                {
                    CourseName = course.CourseName,
                    Fee = course.Fee,
                    Available = course.Available,
                    CourseTitleId = course.CourseTitleId
                };
                _context.Courses.Add(course1);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            
            return View();
        }
        public IActionResult Edit(int? id)
        {
            ViewBag.CourseTitleId = new SelectList(_context.CourseTitles.ToList(), "CourseTitleId", "CourseTitleName");
            Course course = _context.Courses.First(x => x.CourseId == id);
            Course course1 = new Course()
            {
                CourseId=course.CourseId,
                CourseName = course.CourseName,
                Fee = course.Fee,
                Available = course.Available,
                CourseTitleId = course.CourseTitleId
            };
            return View(course1);
        }
        [HttpPost]
        public IActionResult Edit(Course course)
        {
            if (ModelState.IsValid)
            {
                Course course1 = new Course()
                {
                    CourseId=course.CourseId,
                    CourseName = course.CourseName,
                    Fee = course.Fee,
                    Available = course.Available,
                    CourseTitleId = course.CourseTitleId
                };
                _context.Entry(course1).State = EntityState.Modified;
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
        }
        public IActionResult Delete(int? id)
        {
            Course course = _context.Courses.First(x => x.CourseId == id);
            _context.Entry(course).State = EntityState.Deleted;
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
