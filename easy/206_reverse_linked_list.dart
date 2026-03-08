class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next;
      current.next = prev;
      prev = current;
      current = nextTemp;
    }

    return prev;
  }
}

