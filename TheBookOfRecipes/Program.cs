using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models; // Ensure you have the correct namespace for ApplicationDbContext

namespace TheBookOfRecipes {
    public class Program {
        public static void Main(string[] args) {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            // Configure Entity Framework with SQL Server
            builder.Services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

            // Configure Identity
            builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment()) {
                app.UseExceptionHandler("/Home/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication(); // Ensure authentication middleware is added
            app.UseAuthorization(); // Ensure authorization middleware is added

            // Configure routes
            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.MapControllerRoute(
                name: "account",
                pattern: "Account/{action=Login}/{id?}");

            app.MapControllerRoute(
                name: "recipes",
                pattern: "Recipes/{action=Index}/{id?}",
                defaults: new { controller = "Recipes" });

            app.Run();
        }
    }
}