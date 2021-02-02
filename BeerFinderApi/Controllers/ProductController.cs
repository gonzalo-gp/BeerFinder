using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using BeerFinderApi.Domain;
using BeerFinderApi.Persistence;
using Microsoft.AspNetCore.Mvc;

namespace BeerFinderApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : ControllerBase
    {
        private readonly BeerFinderContext _context;

        public ProductController(BeerFinderContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Product> All() => _context.Products.ToList();

        [HttpPost]
        public async Task<Product> Create(Product pToCreate, CancellationToken  c)
        {
            await _context.Products.AddAsync(pToCreate, c);
            await _context.SaveChangesAsync(c);

            return pToCreate;
        }
    }
}
