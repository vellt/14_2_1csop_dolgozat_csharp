using Dolgozat.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Net;

namespace Dolgozat.Services
{
    public class NetworkService
    {
        string url;
        public NetworkService(string url)
        {
            this.url = url;
        }

        public List<Fuvar> GET()
        {
            var request = WebRequest.Create(this.url);
            request.Method = "GET";
            var response = request.GetResponse();
            string json = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return JsonConvert.DeserializeObject<List<Fuvar>>(json);
        }

        public string DELETE(Fuvar fuvar)
        {
            var request = WebRequest.Create(this.url);
            request.Method = "DELETE";
            request.ContentType = "application/json";

            var streamWrite = new StreamWriter(request.GetRequestStream());
            streamWrite.Write(JsonConvert.SerializeObject(new
            {

                id = fuvar.id,
            }));
            streamWrite.Close();

            var response = request.GetResponse();
            string res = new StreamReader(response.GetResponseStream()).ReadToEnd();
            return res;
        }

    }
}
