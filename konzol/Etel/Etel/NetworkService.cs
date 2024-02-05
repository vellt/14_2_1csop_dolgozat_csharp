using System;

namespace Etel
{
    internal class NetworkService
    {
        private string url;

        public NetworkService(string url)
        {
            this.url = url;
        }

        internal System.Collections.Generic.List<Etlap> GET()
        {
            throw new NotImplementedException();
        }

        internal bool POST(Etlap etlap)
        {
            throw new NotImplementedException();
        }
    }
}