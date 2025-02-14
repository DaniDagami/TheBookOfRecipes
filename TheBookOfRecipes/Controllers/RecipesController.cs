using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace TheBookOfRecipes.Controllers {
    public class RecipesController : Controller {
        private readonly ApplicationDbContext _context;

        public RecipesController(ApplicationDbContext context) {
            _context = context;
        }

        // GET: Home/Index
        public async Task<IActionResult> Index() {
            var recipes = await _context.Recipes.Include(r => r.Category).ToListAsync();
            return View(recipes);
        }

        // GET: Recipes
        public async Task<IActionResult> Admin() {
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
        public async Task<IActionResult> Create(Recipe recipe, IFormFile image) {
            if (ModelState.IsValid && image != null && image.Length > 0) {
                // Generate a short name for the recipe
                string shortName = recipe.Name.Replace(" ", "_").ToLower(); // Replace spaces with underscores and convert to lower case
                string fileName = $"{shortName}.png";
                string filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Images", fileName);

                // Save the image to the Images folder
                using (var stream = new FileStream(filePath, FileMode.Create)) {
                    await image.CopyToAsync(stream);
                }

                // Set the ImageUrl property
                recipe.ImageUrl = $"Images/{fileName}";

                // Add the recipe to the context and save changes
                _context.Add(recipe);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            // If we got this far, something failed, redisplay form
            ViewBag.Categories = _context.Categories.ToList();
            return View(recipe);
        }

        // GET: Recipes/Edit/5
        public async Task<IActionResult> Edit(int? id) {
            if (id == null) {
                return NotFound();
            }

            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe == null) {
                return NotFound();
            }

            ViewBag.Categories = _context.Categories.ToList();
            return View(recipe);
        }

        // POST: Recipes/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, Recipe recipe) {
            if (id != recipe.RecipeId) {
                return NotFound();
            }

            if (ModelState.IsValid) {
                try {
                    _context.Update(recipe);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException) {
                    if (!RecipeExists(recipe.RecipeId)) {
                        return NotFound();
                    } else {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewBag.Categories = _context.Categories.ToList();
            return View(recipe);
        }

        // GET: Recipes/Delete/5
        public async Task<IActionResult> Delete(int? id) {
            if (id == null) {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .Include(r => r.Category)
                .FirstOrDefaultAsync(m => m.RecipeId == id);
            if (recipe == null) {
                return NotFound();
            }

            return View(recipe);
        }

        // POST: Recipes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id) {
            var recipe = await _context.Recipes.FindAsync(id);
            _context.Recipes.Remove(recipe);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RecipeExists(int id) {
            return _context.Recipes.Any(e => e.RecipeId == id);
        }

        public async Task<IActionResult> Details(int? id) {
            if (id == null) {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .Include(r => r.RecipeIngredients)
                .ThenInclude(ri => ri.Ingredient)
                .FirstOrDefaultAsync(m => m.RecipeId == id);

            if (recipe == null) {
                return NotFound();
            }

            return View(recipe);
        }
    }
}