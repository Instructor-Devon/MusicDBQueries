using System;
using System.ComponentModel.DataAnnotations;

namespace MusicDB.Models
{
    public class Album
    {
        [Key]
        public int AlbumId {get;set;}
        public int ArtistId {get;set;}
        public string Name {get;set;}
        public DateTime ReleaseDate {get;set;}
        // In Seconds
        public int Duration {get;set;}
        public Artist Artist {get;set;}
    }
}