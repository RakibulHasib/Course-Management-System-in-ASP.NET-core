using System.ComponentModel.DataAnnotations;

namespace Project_work.Models.ViewModel
{
    public class StudentVM
    {
        public int StudentId { get; set; }
        public string? StudentName { get; set; }
        public int Age { get; set; }
        [Required, DataType(DataType.Date), DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime BirthDate { get; set; }
        public string? Picture { get; set; }
        public IFormFile PictureFile { get; set; } = default!;
        public List<int> CourseList { get; set; } = new List<int>();
    }
}
