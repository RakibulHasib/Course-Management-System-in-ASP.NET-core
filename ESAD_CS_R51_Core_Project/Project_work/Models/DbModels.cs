using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_work.Models
{
    public class DbModels
    {
        public class Student
        {
            public int StudentId { get; set; }
            public string? StudentName { get; set; }
            public int Age { get; set; }
            [Required, DataType(DataType.Date), DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
            public System.DateTime BirthDate { get; set; }
            public string? Picture { get; set; }
            public virtual ICollection<EntryCourse> EntryCourses { get; set; } = new HashSet<EntryCourse>();
        }
        public class CourseTitle
        {
            public int CourseTitleId { get; set; }
            public string? CourseTitleName { get; set; }
            public virtual ICollection<Course> Courses { get; set; } = new HashSet<Course>();
        }
        public class Course
        {
            public int CourseId { get; set; }
            public string? CourseName { get; set; }
            public decimal Fee { get; set; }
            public bool Available { get; set; }
            [ForeignKey("CourseTitle")]
            public int CourseTitleId { get; set; }

            public virtual CourseTitle? CourseTitle { get; set; }
            public virtual ICollection<EntryCourse> EntryCourses { get; set; } = new HashSet<EntryCourse>();
        }
        public partial class EntryCourse
        {
            public int EntryCourseId { get; set; }
            [ForeignKey("Student")]
            public int StudentId { get; set; }
            [ForeignKey("Course")]
            public int CourseId { get; set; }

            public virtual Student? Student { get; set; }
            public virtual Course? Course { get; set; }
        }
        public class CourseDbContext : DbContext
        {
            public CourseDbContext(DbContextOptions<CourseDbContext> options)
                : base(options)
            {
            }
            public DbSet<Student> Students { get; set; } = default!;
            public DbSet<CourseTitle> CourseTitles { get; set; } = default!;
            public DbSet<Course> Courses { get; set; } = default!;
            public DbSet<EntryCourse> EntryCourses { get; set; } = default!;
        }
    }
}
