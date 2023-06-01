using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica
{
    public class geo
    {
        string lat;
        string lng;

        public geo(string lat, string lng)
        {
            this.Lat = lat;
            this.Lng = lng;
        }

        public geo()
        {

        }

        public string Lat { get => lat; set => lat = value; }
        public string Lng { get => lng; set => lng = value; }
    }
}