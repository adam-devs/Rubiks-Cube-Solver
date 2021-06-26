public class Queue<T> {

  Node<T> start;
  int size;

  Queue() {
    size = 0;
    start = null;
  }

  public T get() {
    T output;
    if (start != null) {
      output = start.value;
      start = start.next;
    } else {
      output = null;
    }

    return output;
  }

  public void add(T item) {
    size++; //<>//
    Node<T> node = start;
    if (start == null) {
      start = new Node(item);
    } else {
      while (node.next != null) {
        node = node.next;
      }
      node.next = new Node(item);
    }
  }

  class Node<T> {
    T value;
    Node next;

    Node(T item) {
      this.value = item;
    }
  }
}
