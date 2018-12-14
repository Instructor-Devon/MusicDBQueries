using Microsoft.EntityFrameworkCore;

namespace MusicDB.Models
{
    public class MusicContext : DbContext
    {
        public MusicContext(DbContextOptions options) : base(options) {}
        public DbSet<Artist> Artists {get;set;}
        public DbSet<Album> Albums {get;set;}

    }
}