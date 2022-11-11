using ObligatoriskOpgave2.Models;
using System;

namespace ObligatoriskOpgave2
{
    class Program
    {
        static void Main(string[] args)
        {
            ObOPGDBContext OPG = new ObOPGDBContext();
            OPG.Start();
        }
    }
}