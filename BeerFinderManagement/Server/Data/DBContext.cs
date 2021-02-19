using BeerFinderManagement.Shared.Models;
using Microsoft.EntityFrameworkCore;

namespace BeerFinderManagement.Server.Data
{
    public class BeerFinderContext : DbContext
    {
        public BeerFinderContext(DbContextOptions<BeerFinderContext> options) : base(options)
        {
        }
        public DbSet<Product> Products { get; set; }
    }
}
