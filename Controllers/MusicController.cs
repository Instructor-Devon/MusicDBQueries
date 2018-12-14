using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MusicDB.Models;

namespace MusicDB.Controllers
{
    public class MusicController : Controller
    {
        private MusicContext dbContext {get;set;}
        public MusicController(MusicContext context)
        {
            dbContext = context;
        }
        [HttpGet("")]
        public string Index()
        {
            // All Groups (Example query provided)
            List<Artist> groups = dbContext.Artists.Where(a => a.IsGroup).ToList();
            // All Solo Artists (Example query provided)
            List<Artist> soloArtists= dbContext.Artists.Where(a => !a.IsGroup).ToList();

            // All 90s Artists (artists that released an album in the 90s)
            // (Hint: we can use a DateTime to represent the start of the 90s)
            DateTime nintiesStart = new DateTime(1990, 01, 01);
            
            // Albums released by Solo Artists
            
            // Album with the longest duration (if tie, take the first Album encountered)

            // Artist with the most Albums

            // Album with the longest Artist Name
                
            // Bonus: Artist that made the longest (duration) Album



            return "No need to worry about your front end.  Just write the queries!";
        }
    }
}