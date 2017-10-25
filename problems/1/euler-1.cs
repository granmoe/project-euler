/*
  Multiples of 3 and 5
  Problem 1 
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
*/

using System;
using System.Collections.Generic;
using System.Linq;

class MainClass {
  public static void Main (string[] args) {
    Console.WriteLine(Imperative()); // 233168

    var sum = 0;
    foreach (int i in Multiples(1000, new List<int>(new int[] {3, 5})))
    {
      sum += i;
    }

    Console.WriteLine(sum);
  }

  public static int Imperative () {
    var x = 1;
    var sum = 0;
    while (x < 1000) {
      if (x % 3 == 0 || x % 5 == 0) {
        sum += x;
      }
      x++;
    }
    
    return sum;
  }

  public static IEnumerable<int> Multiples(int max, List<int> divisors)
  {
      int i = 0;
      while (i < max)
      {
          if (divisors.Any(d => i % d == 0))
          {
            yield return i;
          }
          i++;
      }
  }
}

// TODO: linq solution
