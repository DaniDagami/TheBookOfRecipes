﻿using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using TheBookOfRecipes.Data;
using TheBookOfRecipes.Models; 

namespace TheBookOfRecipes {
    public class Program {
        public static void Main(string[] args) {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddControllersWithViews();

            builder.Services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

            builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            var app = builder.Build();

            if (!app.Environment.IsDevelopment()) {
                app.UseExceptionHandler("/Home/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication(); 
            app.UseAuthorization(); 

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