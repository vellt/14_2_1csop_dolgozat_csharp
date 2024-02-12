using Dolgozat.Models;
using Dolgozat.Services;
using System;
using System.Collections.Generic;

namespace Dolgozat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string url = "http://localhost:3000/fuvarok";
            NetworkService networkService = new NetworkService(url);

            //lekérdezés
            List<Fuvar> eloadasok = networkService.GET();
            eloadasok.ForEach(x => Console.WriteLine($"{x.indulas_idopontja} - {x.BorravaloMertekeSzazalekban()} - {x.borravalo}"));
            Console.WriteLine();

            //törlés
            Console.WriteLine(networkService.DELETE(eloadasok[0]));


            Console.ReadKey();
        }
    }
}
