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
    public class SettingController : ControllerBase
    {
        private readonly BeerFinderContext _context;

        public SettingController(BeerFinderContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Setting> All() => _context.Settings.ToList();

        [HttpPut()]
        public async Task<Setting> Update(Setting setting)
        {
            _context.Settings.Update(setting);
            await _context.SaveChangesAsync();

            return setting;
        }
    }
}