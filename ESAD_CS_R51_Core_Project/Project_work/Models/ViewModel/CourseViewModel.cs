using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace Project_work.Models.ViewModel
{
    public class CourseViewModel
    {
        [Required]
        public int CourseId { get; set; }
        [Display(Name = "Fee")]
        public decimal Fee { get; set;}
    }
}
