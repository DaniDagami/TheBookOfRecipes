using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TheBookOfRecipes.Controllers;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;
using Xunit;

public class HomeControllerTests {
    private readonly HomeController _controller;
    private readonly ApplicationDbContext _context;

    public HomeControllerTests() {
        var options = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: "TestDatabase")
            .Options;

        _context = new ApplicationDbContext(options);
        var logger = new Logger<HomeController>(new LoggerFactory());
        _controller = new HomeController(logger, _context);

        // Инициализиране на HttpContext
        _controller.ControllerContext = new ControllerContext {
            HttpContext = new DefaultHttpContext()
        };
    }

    // Метод, който се извиква преди всеки тест
    private void ClearDatabase() {
        _context.Recipes.RemoveRange(_context.Recipes);
        _context.SaveChanges();
    }

    [Fact]
    public async Task Index_ReturnsViewResult_WithRandomRecipes() {
        // Изчистване на базата данни преди теста
        ClearDatabase();

        // Arrange
        var recipe1 = new Recipe {
            RecipeId = 1,
            Name = "Recipe 1",
            Description = "Description for Recipe 1",
            Instructions = "Instructions for Recipe 1",
            CategoryId = 1,
            ImageUrl = "Images/recipe1.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe2 = new Recipe {
            RecipeId = 2,
            Name = "Recipe 2",
            Description = "Description for Recipe 2",
            Instructions = "Instructions for Recipe 2",
            CategoryId = 1,
            ImageUrl = "Images/recipe2.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe3 = new Recipe {
            RecipeId = 3,
            Name = "Recipe 3",
            Description = "Description for Recipe 3",
            Instructions = "Instructions for Recipe 3",
            CategoryId = 1,
            ImageUrl = "Images/recipe3.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe4 = new Recipe {
            RecipeId = 4,
            Name = "Recipe 4",
            Description = "Description for Recipe 4",
            Instructions = "Instructions for Recipe 4",
            CategoryId = 1,
            ImageUrl = "Images/recipe4.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe5 = new Recipe {
            RecipeId = 5,
            Name = "Recipe 5",
            Description = "Description for Recipe 5",
            Instructions = "Instructions for Recipe 5",
            CategoryId = 1,
            ImageUrl = "Images/recipe5.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe6 = new Recipe {
            RecipeId = 6,
            Name = "Recipe 6",
            Description = "Description for Recipe 6",
            Instructions = "Instructions for Recipe 6",
            CategoryId = 1,
            ImageUrl = "Images/recipe6.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };

        _context.Recipes.AddRange(recipe1, recipe2, recipe3, recipe4, recipe5, recipe6);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Index();

        // Assert
        var viewResult = Assert.IsType<ViewResult>(result);
        var randomRecipes = _controller.ViewBag.RandomRecipes as List<Recipe>;
        Assert.NotNull(randomRecipes);
        Assert.Equal(5, randomRecipes.Count); // Проверка, че имаме 5 случайни рецепти
    }

    [Fact]
    public async Task Index_ReturnsViewResult_WithRecipesByIngredient() {
        // Изчистване на базата данни преди теста
        ClearDatabase();

        // Arrange
        var recipe1 = new Recipe {
            RecipeId = 1,
            Name = "Recipe with Tomato sauce",
            Description = "Delicious recipe with tomato sauce",
            Instructions = "Mix and cook",
            CategoryId = 1,
            ImageUrl = "Images/tomato_recipe.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe2 = new Recipe {
            RecipeId = 2,
            Name = "Recipe with Eggs",
            Description = "Scrambled eggs recipe",
            Instructions = "Whisk and fry",
            CategoryId = 1,
            ImageUrl = "Images/eggs_recipe.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };
        var recipe3 = new Recipe {
            RecipeId = 3,
            Name = "Recipe with Cheese",
            Description = "Cheesy delight",
            Instructions = "Melt and serve",
            CategoryId = 1,
            ImageUrl = "Images/cheese_recipe.png",
            RecipeIngredients = new List<RecipeIngredient>()
        };

        // Добавяне на рецепти с различни съставки
        _context.Recipes.AddRange(recipe1, recipe2, recipe3);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Index();

        // Assert
        var viewResult = Assert.IsType<ViewResult>(result);
        var recipesByIngredient = _controller.ViewBag.RecipesByIngredient as Dictionary<string, List<Recipe>>;
        Assert.NotNull(recipesByIngredient);
        Assert.True(recipesByIngredient.ContainsKey("Tomato sauce")); // Проверка за съставка
        Assert.True(recipesByIngredient.ContainsKey("Eggs")); // Проверка за съставка
        Assert.True(recipesByIngredient.ContainsKey("Cheese")); // Проверка за съставка
    }

    [Fact]
    public void Error_ReturnsViewResult() {
        // Act
        var result = _controller.Error();

        // Assert
        var viewResult = Assert.IsType<ViewResult>(result);
        var model = Assert.IsType<ErrorViewModel>(viewResult.Model);
        Assert.NotNull(model.RequestId); // Проверка, че RequestId не е null
    }
}