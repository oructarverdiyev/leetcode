//  public class ListNode {
//     public var val: Int
//     public var next: ListNode?
//     public init() { self.val = 0; self.next = nil; }
//     public init(_ val: Int) { self.val = val; self.next = nil; }
//     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//  }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1;
        var node2 = l2;
        
        var output = ListNode(0);
        var head = output;

        var carry = 0;

        while(node1 != nil || node2 != nil) {
            var sum = carry;

            if(node1 != nil) {
                sum = sum + node1!.val;
                node1 = node1!.next
            } 

            if(node2 != nil) {
                sum = sum + node2!.val;
                node2 = node2!.next
            }

            let value = sum % 10;
            carry = sum / 10;

            var newNode = ListNode(value);
            output.next = newNode;
            output = output.next!;
        }

        if(carry != 0) {
            var newNode = ListNode(carry);
            output.next = newNode;
            output = output.next!;
        }

        return head.next;
    }
}