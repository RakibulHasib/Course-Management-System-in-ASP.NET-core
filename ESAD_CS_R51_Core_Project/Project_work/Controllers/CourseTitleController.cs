using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data;
using static Project_work.Models.DbModels;

namespace Project_work.Controllers
{
    [Authorize(Roles = "Admin,Stuff")]
    public class CourseTitleController : Controller
    {
        private readonly CourseDbContext _context;

        public CourseTitleController(CourseDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View(_context.CourseTitles.ToList());
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(CourseTitle courseTitle)
        {
            _context.CourseTitles.Add(courseTitle);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
        public IActionResult Edit(int? id)
        {
            CourseTitle course = _context.CourseTitles.First(x => x.CourseTitleId == id);
            CourseTitle course1 = new CourseTitle()
            {
                CourseTitleId=course.CourseTitleId,
                CourseTitleName=course.CourseTitleName
            };
            return View(course1);
        }
        [HttpPost]
        public IActionResult Edit(CourseTitle courseTitle)
        {
            if (ModelState.IsValid)
            {
                CourseTitle course1 = new CourseTitle()
                {
                    CourseTitleId=courseTitle.CourseTitleId,
                    CourseTitleName=courseTitle.CourseTitleName
                };
                _context.Entry(course1).State = EntityState.Modified;
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            return View();
        }
        public IActionResult Delete(int? id)
        {
            CourseTitle course = _context.CourseTitles.First(x => x.CourseTitleId == id);
            _context.Entry(course).State = EntityState.Deleted;
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
