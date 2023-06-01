using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica
{
    public class Usuario
    {
        int id;
        string name;
        string username;
        string email;
        Address address;
        string phone;
        string website;
        Company company;

     

        public Usuario(int id,string name, string username, string email, Address address, string phone, string website, Company company)
        {
            this.id = id;
            this.Name = name;
            this.Username = username;
            this.Email = email;
            this.Address = address;
            this.Phone = phone;
            this.Website = website;
            this.Company = company;
        }
        public Usuario()
        {

        }
        public string Name { get => name; set => name = value; }
        public string Username { get => username; set => username = value; }
        public string Email { get => email; set => email = value; }
        public Address Address { get => address; set => address = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Website { get => website; set => website = value; }
        public Company Company { get => company; set => company = value; }
        public int Id { get => id; set => id = value; }
    }
}