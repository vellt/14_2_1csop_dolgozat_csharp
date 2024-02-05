using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Etel
{
    class Program
    {
        static void Main(string[] args)
        {
            string url = "http://localhost:3000/etelek";
            NetworkService networkService = new NetworkService(url);
            List<Etlap> etlap= networkService.GET();
            Console.WriteLine();
            Console.WriteLine(networkService.POST(etlap[0]));

            
            Console.ReadKey();
        
        }
    }
}
