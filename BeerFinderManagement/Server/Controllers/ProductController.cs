﻿using BeerFinderManagement.Server.Data;
using BeerFinderManagement.Shared.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace BeerFinderManagement.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : ControllerBase
    {
        private readonly BeerFinderContext _context;
        public ProductController(BeerFinderContext context)
        {
            this._context = context;
        }

        [HttpGet]
        public IEnumerable<Product> All() => _context.Products.ToList();

        [HttpPost]
        public async Task<Product> Create(Product pToCreate, CancellationToken c)
        {
            await _context.Products.AddAsync(pToCreate, c);
            await _context.SaveChangesAsync(c);

            return pToCreate;
        }

        [HttpPut("{Id}")]
        public async Task<Product> Update(Product pToUpdate)
        {
            _context.Products.Update(pToUpdate);
            await _context.SaveChangesAsync();

            return pToUpdate;
        }

        [HttpDelete]
        public async Task<Product> Delete(Product pToDelete)
        {
            _context.Products.Remove(pToDelete);
            await _context.SaveChangesAsync();

            return pToDelete;
        }
    }
}