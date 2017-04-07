using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;

namespace SpanBench
{
    class Program
    {
        static readonly Random Rnd = new Random(42);
        const int Iterations = 1000000;

        static void Main(string[] args)
        {
            Console.WriteLine($"(Id: {Process.GetCurrentProcess().Id})");
            Console.ReadKey(true);

            Span<byte> data = GetData(1024);
            Stopwatch sw = new Stopwatch();

            for (var i = 0; i < 1; i++)
            {
                var a = SpanFixed(data);
                var b = SpanIndexer(data);
                var c = SpanRef(data);

                if (a != b || b != c)
                {
                    Console.WriteLine($"Mismatched checksum ({a} | {b} | {c})");
                    //Process.GetCurrentProcess().Kill();
                    throw new Exception();
                }
            }

            sw.Restart();
            var x = SpanFixed(data);
            sw.Stop();
            var xTicks = sw.ElapsedTicks;

            sw.Restart();
            var y = SpanIndexer(data);
            sw.Stop();
            var yTicks = sw.ElapsedTicks;

            sw.Restart();
            var z = SpanRef(data);
            sw.Stop();
            var zTicks = sw.ElapsedTicks;

            if (x != y || y != z)
            {
                Console.WriteLine($"Mismatched checksum ({x} | {y} | {z})");
                //Process.GetCurrentProcess().Kill();
                throw new Exception();
            }

            Console.WriteLine(
                "{0} | {1} | {2} | {3:F3} | {4:F3}",
                xTicks,
                yTicks,
                zTicks,
                yTicks / (double)xTicks,
                zTicks / (double)xTicks
                );
        }

        static unsafe byte SpanFixed(Span<byte> data)
        {
            fixed (byte* pData = &data.DangerousGetPinnableReference())
            {
                int length = data.Length;
                byte x = 0;
                byte* p = pData;

                for (var i = 0; i < Iterations; i++)
                {
                    for (var idx = 0; idx < length; idx++)
                    {
                        //x ^= pData[idx];
                        x ^= *(p + idx);
                    }
                }

                return x;
            }
        }

        static byte SpanIndexer(Span<byte> data)
        {
            int length = data.Length;
            byte x = 0;

            for (var i = 0; i < Iterations; i++)
            {
                for (var idx = 0; idx < length; idx++)
                {
                    x ^= data[idx];
                }
            }

            return x;
        }

        static byte SpanRef(Span<byte> data)
        {
            ref byte p = ref data.DangerousGetPinnableReference();
            int length = data.Length;
            byte x = 0;

            for (var i = 0; i < Iterations; i++)
            {
                for (var idx = 0; idx < length; idx++)
                {
                    x ^= Unsafe.Add(ref p, idx);
                }
            }

            return x;
        }

        static byte[] GetData(int size)
        {
            byte[] data = new byte[size];
            Rnd.NextBytes(data);
            return data;
        }
    }
}
