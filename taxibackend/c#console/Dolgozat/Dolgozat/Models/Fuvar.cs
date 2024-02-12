using System;

namespace Dolgozat.Models
{
    public class Fuvar
    {
        public int id { get; set; }
        public DateTime indulas_idopontja;
        public int utazas_idotartma { get; set; }
        public double megtett_tavolsag { get; set; }
        public double viteldij { get; set; }
        public double borravalo { get; set; }
        public string fizetes_modja { get; set; }

        public Fuvar(double viteldij, double borravalo)
        {
            this.viteldij = viteldij;
            this.borravalo = borravalo;
        }

        public double BorravaloMertekeSzazalekban()
        {
            double borravaloSzazalekban = (borravalo / viteldij) * 100;
            return Math.Round(borravaloSzazalekban, 2);
        }
        public double ViteldijForintban
        {
            get { return viteldij * 300; }
        }

        public double BorravaloForintban
        {
            get { return borravalo * 300; }
        }
    }
}
