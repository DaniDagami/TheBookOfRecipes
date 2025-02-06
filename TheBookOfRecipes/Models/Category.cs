namespace TheBookOfRecipes.Models {
    public class Category {
        public int CategoryId { get; set; }
        public string Name { get; set; }
        public ICollection<Recipe> Recipes { get; set; }
    }
}
