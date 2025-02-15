using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;
using TheBookOfRecipes.Controllers;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models;
using Xunit;

public class CategoriesControllerTests {
    private readonly CategoriesController _controller;
    private readonly ApplicationDbContext _context;

    public CategoriesControllerTests() {
        var options = new DbContextOptionsBuilder<ApplicationDbContext>()
            .UseInMemoryDatabase(databaseName: "TestDatabase")
            .Options;

        _context = new ApplicationDbContext(options);
        _controller = new CategoriesController(_context);
    }

    private void ClearDatabase() {
        _context.Categories.RemoveRange(_context.Categories);
        _context.SaveChanges();
    }

    [Fact]
    public async Task Index_ReturnsViewResult_WithListOfCategories() {
        ClearDatabase();

        // Arrange
        var category1 = new Category { Name = "Test Category 1" }; 
        var category2 = new Category { Name = "Test Category 2" }; 
        _context.Categories.Add(category1);
        _context.Categories.Add(category2);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Index();

        // Assert
        var viewResult = Assert.IsType<ViewResult>(result);
        var model = Assert.IsAssignableFrom<List<Category>>(viewResult.ViewData.Model);
        Assert.Equal(2, model.Count); 
    }

    [Fact]
    public async Task Recipes_ExistingCategory_ReturnsViewResult_WithCategory() {
        ClearDatabase();

        // Arrange
        var category = new Category { Name = "Test Category" };
        _context.Categories.Add(category);
        await _context.SaveChangesAsync();

        // Act
        var result = await _controller.Recipes(category.CategoryId);

        // Assert
        var viewResult = Assert.IsType<ViewResult>(result);
        var model = Assert.IsAssignableFrom<Category>(viewResult.ViewData.Model);
        Assert.Equal("Test Category", model.Name);
    }

    [Fact]
    public async Task Recipes_NonExistingCategory_ReturnsNotFound() {
        // Act
        var result = await _controller.Recipes(999); 

        // Assert
        Assert.IsType<NotFoundResult>(result);
    }
}