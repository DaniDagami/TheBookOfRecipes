using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using TheBookOfRecipes.Controllers;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;
using Xunit;

public class RecipesControllerTests {
    private readonly RecipesController _controller;
    private readonly ApplicationDbContext _context;

    public RecipesControllerTests() {
        var options = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: "TestDatabase")
            .Options;

        _context = new ApplicationDbContext(options);
        _controller = new RecipesController(_context);
    }

    [Fact]
    public async Task Index_ReturnsViewResult() {
        // Act
        var result = await _controller.Index();

        // Assert
        Assert.IsType<ViewResult>(result);
    }

    [Fact]
    public async Task Edit_ReturnsViewResult() {
        // Arrange
        var recipe = new Recipe {
            Name = "Test Recipe",
            Description = "Test Description",
            Instructions = "Test Instructions",
            CategoryId = 1,
            ImageUrl = "Images/test_recipe.png"
        };
        _context.Recipes.Add(recipe);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Edit(recipe.RecipeId);

        // Assert
        Assert.IsType<ViewResult>(result);
    }

    [Fact]
    public async Task Delete_ExistingRecipe_ReturnsRedirectToIndex() {
        // Arrange
        var recipe = new Recipe {
            Name = "Test Recipe",
            Description = "Test Description",
            Instructions = "Test Instructions",
            CategoryId = 1,
            ImageUrl = "Images/test_recipe.png"
        };
        _context.Recipes.Add(recipe);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.DeleteConfirmed(recipe.RecipeId); 

        // Assert
        var redirectResult = Assert.IsType<RedirectToActionResult>(result);
        Assert.Equal("Index", redirectResult.ActionName);
    }

    [Fact]
    public async Task Delete_NonExistingRecipe_ReturnsNotFound() {
        // Act
        var result = await _controller.Delete(999); 

        // Assert
        Assert.IsType<NotFoundResult>(result);
    }

    [Fact]
    public async Task Details_ReturnsViewResult() {
        // Arrange
        var recipe = new Recipe {
            Name = "Test Recipe",
            Description = "Test Description",
            Instructions = "Test Instructions",
            CategoryId = 1,
            ImageUrl = "Images/test_recipe.png"
        };
        _context.Recipes.Add(recipe);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Details(recipe.RecipeId);

        // Assert
        Assert.IsType<ViewResult>(result);
    }
}