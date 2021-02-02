using BeerFinderApi.Domain;
using Microsoft.EntityFrameworkCore;

namespace BeerFinderApi.Persistence
{
    public class BeerFinderContext : DbContext
    {
        public BeerFinderContext(DbContextOptions options) : base(options) { }

        public DbSet<Product> Products { get; set; }
        public DbSet<Setting> Settings { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            var pro = modelBuilder.Entity<Product>();
            pro.ToTable("Product", "dbo");
            pro.Property(p => p.Id).ValueGeneratedOnAdd();
            pro.HasKey(p => p.Id);

            var set = modelBuilder.Entity<Setting>();
            set.ToTable("Setting", "dbo");
            set.Property(p => p.Id).ValueGeneratedOnAdd();
            set.HasKey(p => p.Id);
        }
    }
}
