import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Solution {
  public static void main(String[] args) throws IOException {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String input[] = br.readLine().split(" ");
    int n = Integer.parseInt(input[0]);
    int m = Integer.parseInt(input[1]);
    byte[][] arrKnowledge = new byte[n][m];
    for (short i = 0; i < n; ++i) {
      char[] arr = br.readLine().toCharArray();
      for (int j = 0; j < m; ++j) {
        arrKnowledge[i][j] = (byte) (arr[j] - '0');
      }
    }
    int maxTeams = 0;
    int maxTopics = 0;
    for (int i = 0; i < n; ++i) {
      for (int j = (int) (i + 1); j < n; ++j) {
        int numTopics = 0;
        for (int k = 0; k < m; ++k) {
          numTopics += arrKnowledge[i][k] | arrKnowledge[j][k];
        }
        if (maxTopics < numTopics) {
          maxTeams = 1;
          maxTopics = numTopics;
        } else if (maxTopics == numTopics) {
          ++maxTeams;
        }
      }
    }
    System.out.println(maxTopics);
    System.out.print(maxTeams);
  }
}
