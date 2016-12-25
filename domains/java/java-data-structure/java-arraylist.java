import java.util.ArrayList;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = Integer.parseInt(sc.next());
        ArrayList<ArrayList<Integer>> list = new ArrayList<ArrayList<Integer>>();
        for (int n = 0; n < N; n++) {
            int M = Integer.parseInt(sc.next());
            list.add(new ArrayList<Integer>());
            for (int m = 0; m < M; m++) {
                int x = Integer.parseInt(sc.next());
                ;
                list.get(n).add(x);
            }
        }
        int Q = Integer.parseInt(sc.next());
        for (int q = 0; q < Q; q++) {
            int x = Integer.parseInt(sc.next()), y = Integer.parseInt(sc.next());
            if (x > list.size() || y > list.get(x - 1).size()) System.out.println("ERROR!");
            else System.out.println(list.get(x - 1).get(y - 1));
        }
    }
}
