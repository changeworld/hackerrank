import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

class Node {
  Node left;
  Node right;
  int data;

  Node(int data) {
    this.data = data;
    left = right = null;
  }
}

class Solution {
  static void levelOrder(Node root) {
    Queue<Node> queue = new LinkedList<Node>();
    queue.offer(root);
    while (!queue.isEmpty()) {
      Node head = queue.poll();
      if (head == null) {
        continue;
      }
      System.out.print(head.data + " ");
      queue.offer(head.left);
      queue.offer(head.right);
    }
    System.out.println();
  }

  public static Node insert(Node root, int data) {
    if (root == null) {
      return new Node(data);
    } else {
      Node cur;
      if (data <= root.data) {
        cur = insert(root.left, data);
        root.left = cur;
      } else {
        cur = insert(root.right, data);
        root.right = cur;
      }
      return root;
    }
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int t = sc.nextInt();
    Node root = null;
    while (t -- > 0) {
      int data = sc.nextInt();
      root = insert(root, data);
    }
    levelOrder(root);
  }
}