namespace TheBookOfRecipes.Models {
    public class Ingredient {
        public int IngredientId { get; set; }
        public string Name { get; set; }
        public string Quantity { get; set; }
        public ICollection<RecipeIngredient> RecipeIngredients { get; set; }
    }
}