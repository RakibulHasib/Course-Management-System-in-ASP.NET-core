using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_work.Models.ViewModel;
using System.Data;
using static Project_work.Models.DbModels;

namespace Project_work.Controllers
{
    [Authorize(Roles = "Admin,Stuff")]
    public class StudentController : Controller
    {
        private readonly CourseDbContext _context;
        private readonly IWebHostEnvironment _he;

        public StudentController(CourseDbContext context, IWebHostEnvironment he)
        {
            _context = context;
            _he = he;
        }
        public IActionResult Index()
        {
            return View(_context.Students.Include(x => x.EntryCourses).ThenInclude(b => b.Course).ToList());
        }

        public IActionResult AddNewCourse(int? id)
        {
            ViewBag.Course = new SelectList(_context.Courses.ToList(), "CourseId", "CourseName", id.ToString() ?? "");
            return PartialView("_AddNewCourse");
        }
        public JsonResult GetFee(int id)
        {
            var t = _context.Courses.FirstOrDefault(x => x.CourseId == id);
            return Json(t == null ? 0 : t.Fee);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(StudentVM studentVM, int[] CourseId)
        {
            if (ModelState.IsValid)
            {
                Student student = new Student()
                {
                    StudentName = studentVM.StudentName,
                    Age= studentVM.Age,
                    BirthDate= studentVM.BirthDate
                };
                //Img
                string webroot = _he.WebRootPath;
                string folder = "Images";
                string filePath = Path.GetFileName(studentVM.PictureFile.FileName);
                string fileToSave = Path.Combine(webroot, folder, filePath);

                using (var stream = new FileStream(fileToSave, FileMode.Create))
                {
                    await studentVM.PictureFile.CopyToAsync(stream);
                    student.Picture = "/" + folder + "/" + filePath;
                }
                foreach (var item in CourseId)
                {
                    EntryCourse entryCourse = new EntryCourse()
                    {
                        Student = student,
                        StudentId = student.StudentId,
                        CourseId = item
                    };
                    _context.EntryCourses.Add(entryCourse);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View();
        }
        public IActionResult Edit(int? id)
        {
            Student student = _context.Students.First(x => x.StudentId == id);
            var courseList = _context.EntryCourses.Where(x => x.StudentId == id).Select(p => p.CourseId).ToList();
            StudentVM studentVM = new StudentVM()
            {
                StudentId = student.StudentId,
                StudentName=student.StudentName,
                BirthDate = student.BirthDate,
                Age = student.Age,
                Picture = student.Picture,
                CourseList = courseList
            };
            return View(studentVM);
        }
        [HttpPost]
        public async Task<IActionResult> Edit(StudentVM studentVM, int[] CourseId)
        {
            ModelState.Remove("PictureFile");
            if (ModelState.IsValid)
            {
                Student student = new Student()
                {
                    StudentId = studentVM.StudentId,
                    StudentName = studentVM.StudentName,
                    Age = studentVM.Age,
                    BirthDate = studentVM.BirthDate,
                    Picture = studentVM.Picture
                };
                //Img
                if (studentVM.PictureFile != null)
                {
                    string webroot = _he.WebRootPath;
                    string folder = "Images";
                    string filePath = Path.GetFileName(studentVM.PictureFile.FileName);
                    string fileToSave = Path.Combine(webroot, folder, filePath);

                    using (var stream = new FileStream(fileToSave, FileMode.Create))
                    {
                        await studentVM.PictureFile.CopyToAsync(stream);
                        student.Picture = "/" + folder + "/" + filePath;
                    }
                }
                var existCourse = _context.EntryCourses.Where(x => x.StudentId == student.StudentId).ToList();
                foreach (var item in existCourse)
                {
                    _context.EntryCourses.Remove(item);
                }
                foreach (var item in CourseId)
                {
                    EntryCourse entryCourse = new EntryCourse
                    {
                        StudentId = student.StudentId,
                        CourseId = item
                    };
                    _context.EntryCourses.Add(entryCourse);
                }
                _context.Entry(student).State = EntityState.Modified;
                await _context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View();
        }
        public IActionResult Delete(int? id)
        {
            var existCourse = _context.EntryCourses.Where(x => x.StudentId == id).ToList();
            foreach (var item in existCourse)
            {
                _context.EntryCourses.Remove(item);
            }
            var student = _context.Students.First(x => x.StudentId == id);
            _context.Entry(student).State = EntityState.Deleted;
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
