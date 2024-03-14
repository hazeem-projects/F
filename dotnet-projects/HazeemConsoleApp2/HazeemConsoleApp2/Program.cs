using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HazeemConsoleApp2
{
    internal class Program
    {
   
    }

    class A
    {
       protected void run()
        {
            Console.WriteLine("Run");
        }
    }
    class B : A
    {
        void run()
        {
            Console.WriteLine("Run Fastly");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("First C# Program... Hazeem");
            Console.WriteLine("First C# Program... Waseem");
            A a=new A();
            //a.run();
            A b=new B();
            b.run();
            Console.ReadKey();

        }

        

    }


}
