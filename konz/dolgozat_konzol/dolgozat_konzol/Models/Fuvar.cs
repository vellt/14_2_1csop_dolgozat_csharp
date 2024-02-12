using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dolgozat_konzol.Models
{
    public class Fuvar
    {
        public int id { get; set; }
        public double indulas_idopontja { get; set; }
        public string utazas_idotartma { get; set; }
        public double megtett_tavolsag { get; set; }
        private double vtMez;
        public double viteldij
        {
            get => vtMez * 300;
            set => vtMez = value;
        }
        public double borravalo
        {
            get;
            set;
        }
        public string fizetes_modja { get; set; }

        public double BorravaloMertekeSzazalekban()
        {
         

        }


    }
}
