using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System.Diagnostics;
using System.Threading.Tasks;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;

namespace TheBookOfRecipes.Controllers {
    public class HomeController : Controller {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context; // Добавяне на ApplicationDbContext

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context) {
            _logger = logger;
            _context = context; // Инициализиране на ApplicationDbContext
        }

        // GET: Home/Index
        public async Task<IActionResult> Index() {
            var recipes = await _context.Recipes.Include(r => r.Category).ToListAsync(); // Извличане на рецепти
            return View(recipes); // Предаване на рецептите на представянето
        }

        public IActionResult Privacy() {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error() {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}