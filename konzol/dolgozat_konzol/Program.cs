using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dolgozat_konzol
{
    class Program
    {
        static void Main(string[] args)
        {
            string url = "http://localhost:3000/eloadasok";
            NetworkService networkService = new NetworkService(url);
            List<Taxi> eloadasok = networkService.GET();

            Console.WriteLine();

        }
    }
}
