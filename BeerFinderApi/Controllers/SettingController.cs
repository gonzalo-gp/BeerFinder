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
    public class SettingController : ControllerBase
    {
        private readonly BeerFinderContext _context;

        public SettingController(BeerFinderContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Setting> All() => _context.Settings;

        [HttpPost]
        public async Task<Setting> Create(Setting sToCreate, CancellationToken c)
        {
            await _context.Settings.AddAsync(sToCreate, c);
            await _context.SaveChangesAsync(c);

            return sToCreate;
        }

        [HttpPut("{Id}")]
        public async Task<Setting> Update(Setting sToUpdate)
        {
            _context.Settings.Update(sToUpdate);
            await _context.SaveChangesAsync();

            return sToUpdate;
        }

        [HttpDelete]
        public async Task<Setting> Delete(Setting sToDelete)
        {
            _context.Settings.Remove(sToDelete);
            await _context.SaveChangesAsync();

            return sToDelete;
        }
    }
}