import java.util.Scanner;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int H=6, W=6;
    int arr[][] = new int[H][W];
    for(int h=0; h<H; h++){
      for(int w=0; w<W; w++){
        arr[h][w] = Integer.parseInt(sc.next());
      }
    }
    int rtn = Integer.MIN_VALUE;
    for(int h=0; h<H-2; h++){
      for(int w=0; w<W-2; w++){
        rtn = Math.max(rtn, arr[h][w]+arr[h][w+1]+arr[h][w+2]+arr[h+1][w+1]+arr[h+2][w]+arr[h+2][w+1]+arr[h+2][w+2]);
      }
    }
    System.out.println(rtn);
  }
}
