using System;
class MainClass {
  public static void Main (string[] args) {
    Console.WriteLine(Imperative()); // 233168
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
}