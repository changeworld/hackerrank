import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s;
        int n, x, y;
        n = sc.nextInt();
        List l = new ArrayList();
        for (int i = 0; i < n; i++) l.add(sc.nextInt());
        n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            s = sc.next();
            if (s.equals("Insert")) {
                x = sc.nextInt();
                y = sc.nextInt();
                l.add(x, y);
            } else {
                x = sc.nextInt();
                l.remove(x);
            }
        }
        for (int i = 0; i < l.size(); i++) System.out.print(l.get(i) + " ");
    }
}