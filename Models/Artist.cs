using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MusicDB.Models
{
    public class Artist
    {
        [Key]
        public int ArtistId {get;set;}
        public string Name {get;set;}
        public bool IsGroup {get;set;}
        public List<Album> Discography {get;set;}

    }
}