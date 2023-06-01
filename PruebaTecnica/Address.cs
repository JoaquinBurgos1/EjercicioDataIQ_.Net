using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica
{
    public class Address
    {
        string street;
        string suite;
        string city;
        string zipcode;
        geo geo;

        public Address(string street, string suite, string city, string zipcode, geo geo)
        {
            this.Street = street;
            this.Suite = suite;
            this.City = city;
            this.Zipcode = zipcode;
            this.Geo = geo;
        }
        public Address()
        {

        }

        public string Street { get => street; set => street = value; }
        public string Suite { get => suite; set => suite = value; }
        public string City { get => city; set => city = value; }
        public string Zipcode { get => zipcode; set => zipcode = value; }
        public geo Geo { get => geo; set => geo = value; }
    }
}