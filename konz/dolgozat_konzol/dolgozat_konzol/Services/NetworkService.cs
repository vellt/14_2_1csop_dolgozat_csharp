using System;
using System.Collections.Generic;

namespace dolgozat_konzol
{
    internal class NetworkService
    {
        private string url;

        public NetworkService(string url)
        {
            this.url = url;
        }

        internal List<Taxi> GET()
        {
            throw new NotImplementedException();
        }
    }
}