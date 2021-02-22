using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using BeerFinderApi.Domain;
using BeerFinderApi.Persistence;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

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

        [HttpGet("{Id}")]
        public async Task<Product> Get(int id)
        {
            var prod =  await _context.Products.SingleOrDefaultAsync(p => p.Id == id);
            return prod;
        }

        [HttpPost]
        public async Task<Product> Create(Product pToCreate, CancellationToken c)
        {
            await _context.Products.AddAsync(pToCreate, c);
            await _context.SaveChangesAsync(c);

            return pToCreate;
        }

        [HttpPut()]
        public async Task<Product> Update(Product pToUpdate)
        {
            _context.Products.Update(pToUpdate);
            await _context.SaveChangesAsync();

            return pToUpdate;
        }

        [HttpDelete("{Id}")]
        public async Task<Product> Delete(int id)
        {
            var pToDelete = new Product { Id = id };
            _context.Products.Remove(pToDelete);
            await _context.SaveChangesAsync();

            return pToDelete;
        }

    }
}
