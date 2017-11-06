import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    int T = scan.nextInt();
    int max = 0;
    int[] N = new int[T];
    for (int i = 0; i < T; i++) {
      N[i] = scan.nextInt();
      if (N[i] > max) {
        max = N[i];
      }
    }
    ArrayList<Integer> primes = getPrimes(max);
    Collections.sort(primes);
    for (int i = 0; i < N.length; i++) {
      System.out.println(getSum(primes,N[i]));
    }
  }

  static long getSum(ArrayList<Integer> primes,int N) {
    long sum = 0;
    for (int i = 0;i < primes.size();i++) {
      if (primes.get(i) <= N) {
        sum += primes.get(i);
      } else {
        break;
      }
    }
    return sum;
  }

  static ArrayList<Integer> getPrimes(int N) {
    boolean[] list = new boolean[N + 1];
    Arrays.fill(list,true);
    ArrayList<Integer> primes = new ArrayList();
    list[0] = false;
    list[1] = false;
    for (int i = 0;i < list.length;i++) {
      if (list[i]) {
        primes.add(i);
        int j = i + i;
        while (j < list.length) {
          list[j] = false;
          j += i;
        }
      }
    }
    return primes;
  }
}
