import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int t = scan.nextInt();
        int max = 0;
        int[] n = new int[t];
        for (int i = 0; i < t; i++) {
            n[i] = scan.nextInt();
            if (n[i] > max) {
                max = n[i];
            }
        }
        ArrayList<Integer> primes = getPrimes(max);
        Collections.sort(primes);
        for (int i = 0; i < n.length; i++) {
            System.out.println(getSum(primes, n[i]));
        }
    }

    static long getSum(ArrayList<Integer> primes, int n) {
        long sum = 0;
        for (int i = 0; i < primes.size(); i++) {
            if (primes.get(i) <= n) {
                sum += primes.get(i);
            } else {
                break;
            }
        }
        return sum;
    }

    static ArrayList<Integer> getPrimes(int n) {
        boolean[] list = new boolean[n + 1];
        Arrays.fill(list, true);
        ArrayList<Integer> primes = new ArrayList();
        list[0] = false;
        list[1] = false;
        for (int i = 0; i < list.length; i++) {
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
