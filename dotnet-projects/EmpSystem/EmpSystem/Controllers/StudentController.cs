using EmpSystem.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EmpSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {

       static List<Student> students =new List<Student>();


        public List<Student> getAllStudents()
        {
            students.Add(new Student()
            {
                StudentId  = 1,
                StudentName = "Bilal",
                StudentEmail="bilal@gmail.com",
                StudentAddress="BC"
            });
            students.Add(new Student()
            {
                StudentId = 2,
                StudentName = "Khalidh",
                StudentEmail = "khalidh@gmail.com",
                StudentAddress = "BC"
            });
            students.Add(new Student()
            {
                StudentId = 1,
                StudentName = "Abdullah",
                StudentEmail = "bilal@gmail.com",
                StudentAddress = "BC"
            });



            return students;
        }
    }
}
