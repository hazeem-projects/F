using Microsoft.AspNetCore.Mvc;

namespace ControllersExample.Controllers
{
  public class HomeController
    {

        public IActionResult AccountDetails()
        {

        }


        [Route("/")]
        [Route("/home")]
        public string Index()
        {
            return "Hi from Index";
        }

        [Route("/about")]
        public string About()
        {
            return "Hi from about";
        }

        [Route("/contact-us/{mobile:regex(^\\d{{10}}$)}")]
        public string ContactUs()
        {
            return "Hi from contact us";
        }
    }
}
