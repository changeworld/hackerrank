import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class Solution {
  /**
   * Java Sort Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int testCases = Integer.parseInt(in.nextLine());

    List<Student> studentList = new ArrayList<Student>();
    while (testCases > 0) {
      Student st = new Student(in.nextInt(), in.next(), in.nextDouble());
      studentList.add(st);
      testCases--;
    }
    Collections.sort(studentList);
    for (Student st : studentList) {
      System.out.println(st.getFname());
    }
  }
}