using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Etel.Models
{
    public class Etel
    {
        public int id { get; set; }
        private string neveMezo;

        public string neve
        {
            get
            {
                if (neveMezo == "")
                {
                    return $"{neve} ";
                }
                else
                {
                    return ;
                }
            }
            set
            {
                neveMezo = value;
            }
        }
        public int energia { get; set; }
        public int szenh { get; set; }
        public int ara { get; set; }
        public string kategoria { get; set; }
        

        
    }
}

