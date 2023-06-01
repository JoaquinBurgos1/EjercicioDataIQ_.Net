using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;

namespace PruebaTecnica
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    using (HttpClient client = new HttpClient())
                    {
                        HttpResponseMessage response = client.GetAsync("https://jsonplaceholder.typicode.com/users").Result;
                        
                        // TIRA EXCEPCION SI DA ERROR
                        response.EnsureSuccessStatusCode(); 

                        string Data = response.Content.ReadAsStringAsync().GetAwaiter().GetResult();
                        List<Usuario> usuarios = JsonConvert.DeserializeObject<List<Usuario>>(Data);
                        rpDatos.DataSource = usuarios;
                        rpDatos.DataBind();

                    }
                }
                catch (HttpRequestException ex)
                {
                    Console.WriteLine($"Error: {ex.Message}");
                }
            }
        }
    }
}
