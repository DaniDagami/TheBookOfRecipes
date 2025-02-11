using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;

public class CategoriesController : Controller {
    private readonly ApplicationDbContext _context;

    public CategoriesController(ApplicationDbContext context) {
        _context = context;
    }

    // GET: Categories
    public async Task<IActionResult> Index() {
        var categories = await _context.Categories.ToListAsync();
        return View(categories);
    }

    // GET: Categories/Recipes/5
    public async Task<IActionResult> Recipes(int id) {
        var category = await _context.Categories
            .Include(c => c.Recipes)
            .FirstOrDefaultAsync(c => c.CategoryId == id);

        if(category == null) {
            return NotFound();
        }

        return View(category);
    }
}