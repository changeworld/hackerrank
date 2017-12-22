import java.util.PriorityQueue;
import java.util.Scanner;

class Solution {
  /**
   * Java Priority Queue Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int totalEvents = Integer.parseInt(in.nextLine());
    PriorityQueue<Student> queue = new PriorityQueue<Student>();
    for (int i = 0; i < totalEvents; i++) {
      String event = in.next();
      if (event.equals("SERVED")) {
        queue.poll();
      } else {
        String name = in.next();
        double cgpa = in.nextDouble();
        int id = in.nextInt();
        queue.offer(new Student(id, name, cgpa));
      }
    }
    if (queue.size() == 0) {
      System.out.println("EMPTY");
    } else {
      for (; ; ) {
        Student student = queue.poll();
        if (student == null) {
          break;
        }
        System.out.println(student.getFname());
      }
    }
  }
}