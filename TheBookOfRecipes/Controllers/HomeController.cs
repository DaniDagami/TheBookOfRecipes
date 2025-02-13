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
        private readonly ApplicationDbContext _context; 

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context) {
            _logger = logger;
            _context = context; 
        }

        public async Task<IActionResult> Index() {
            
            var allRecipes = await _context.Recipes
                .Include(r => r.Category)
                .Include(r => r.RecipeIngredients) 
                .ThenInclude(ri => ri.Ingredient) 
                .ToListAsync();

            var random = new Random();
            var randomRecipes = allRecipes.OrderBy(x => random.Next()).Take(8).ToList();

            var ingredients = _context.Ingredients.Select(x => x.Name).ToList();
            var ingredientsToSearch = ingredients.OrderBy(x => random.Next()).ToList();

            var recipesByIngredient = new Dictionary<string, List<Recipe>>();

            foreach (var ingredient in ingredientsToSearch) {
                var recipesWithIngredient = allRecipes
                    .Where(r => r.RecipeIngredients.Any(ri => ri.Ingredient.Name.Equals(ingredient, StringComparison.OrdinalIgnoreCase)))
                    .ToList();
                if (recipesWithIngredient.Count == 0) {
                    recipesByIngredient.Remove(ingredient);
                } else {
                    recipesByIngredient[ingredient] = recipesWithIngredient;
                }
            }

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