import java.util.Scanner;

class Solution {
  public static Node removeDuplicates(Node head) {
    for (Node node = head; node != null; node = node.next) {
      while (node.next != null && node.data == node.next.data) {
        node.next = node.next.next;
      }
    }
    return head;
  }

  public static Node insert(Node head, int data) {
    Node p = new Node(data);
    if (head == null) {
      head = p;
    } else if (head.next == null) {
      head.next = p;
    } else {
      Node start = head;
      while (start.next != null) {
        start = start.next;
      }
      start.next = p;
    }
    return head;
  }

  public static void display(Node head) {
    Node start = head;
    while (start != null) {
      System.out.print(start.data + " ");
      start = start.next;
    }
  }

  /**
   * Day 24: More Linked Lists Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    Node head = null;
    int t = sc.nextInt();
    while (t -- > 0) {
      int ele = sc.nextInt();
      head = insert(head, ele);
    }
    head = removeDuplicates(head);
    display(head);
  }
}