using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica
{
    public class Company
    {
        string name;
        string catchPhrase;
        string bs;

        public Company(string name, string catchPhrase, string bs)
        {
            this.Name = name;
            this.CatchPhrase = catchPhrase;
            this.Bs = bs;
        }
        public Company()
        {

        }
        public string Name { get => name; set => name = value; }
        public string CatchPhrase { get => catchPhrase; set => catchPhrase = value; }
        public string Bs { get => bs; set => bs = value; }
    }
}