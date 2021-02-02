using System.Collections.Generic;
using System.Linq;
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
    }
}