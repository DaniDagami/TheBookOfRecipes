namespace TheBookOfRecipes.Models {
    public class Recipe {
        public int RecipeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Instructions { get; set; }
        public int CategoryId { get; set; }
        public Category Category { get; set; }
        public string ImageUrl { get; set; }
        public ICollection<RecipeIngredient> RecipeIngredients { get; set; }
    }
}