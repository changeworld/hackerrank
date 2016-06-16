import java.util.Scanner;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int[] a = new int[n+1];
    for(int i=1; i<=n; i++){
      a[i] = sc.nextInt()+a[i-1];
    }
    int r = 0;
    for(int i=0; i<n; i++){
      for(int j=i+1; j<=n; j++){
        if(a[j]-a[i]<0)r++;
      }
    }
    System.out.println(r);
  }
}
