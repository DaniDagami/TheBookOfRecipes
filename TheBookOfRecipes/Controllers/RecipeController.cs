using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models; 
using System.Linq;
using System.Threading.Tasks;

namespace TheBookOfRecipes.Controllers {
    public class RecipesController : Controller {
        private readonly ApplicationDbContext _context;

        public RecipesController(ApplicationDbContext context) {
            _context = context;
        }

        // GET: Recipes
        public async Task<IActionResult> Index() {
            var recipes = await _context.Recipes.Include(r => r.Category).ToListAsync();
            return View(recipes);
        }

        // GET: Recipes/Create
        public IActionResult Create() {
            ViewBag.Categories = _context.Categories.ToList(); 
            return View();
        }

        // POST: Recipes/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Recipe recipe) {
            if(ModelState.IsValid) {
                _context.Add(recipe);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewBag.Categories = _context.Categories.ToList();
            return View(recipe);
        }

    }
}