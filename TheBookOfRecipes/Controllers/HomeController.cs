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

        public async Task<IActionResult> Index() {
            // Получаване на всички рецепти
            var allRecipes = await _context.Recipes
                .Include(r => r.RecipeIngredients) // Включете RecipeIngredients
                .ThenInclude(ri => ri.Ingredient) // Включете Ingredient
                .ToListAsync();

            // Генериране на случайни рецепти
            var random = new Random();
            var randomRecipes = allRecipes.OrderBy(x => random.Next()).Take(5).ToList(); // Вземете 5 случайни рецепти

            // Определяне на съставките, по които да търсите
            var ingredientsToSearch = new List<string> { "Tomato sauce", "Eggs", "Cheese", "Fruits", "Olive Oil", "Chocolate" };

            // Създаване на речник за рецепти по съставки
            var recipesByIngredient = new Dictionary<string, List<Recipe>>();

            foreach (var ingredient in ingredientsToSearch) {
                var recipesWithIngredient = allRecipes
                    .Where(r => r.RecipeIngredients.Any(ri => ri.Ingredient.Name.Equals(ingredient, StringComparison.OrdinalIgnoreCase)))
                    .ToList();

                recipesByIngredient[ingredient] = recipesWithIngredient;
            }

            // Предаване на данни на представянето
            ViewBag.RandomRecipes = randomRecipes;
            ViewBag.RecipesByIngredient = recipesByIngredient;

            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error() {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

    }
}