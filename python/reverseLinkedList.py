# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        if not head.next:
            return head

        prevNode = head
        head = head.next
        prevNode.next = None

        while head:
            nextNode = head.next
            head.next = prevNode
            prevNode = head
            head = nextNode

        return prevNode


head = ListNode(val=5)
x = head
for i in range(4, 0, -1):
    y = ListNode(val=i, next=x)
    x = y

while x:
    print(x.val, end="")
    if x.next:
        print("->", end="")
    else:
        print("->None")
    x = x.next

x = Solution().reverseList(y)
while x:
    print(x.val, end="")
    if x.next:
        print("->", end="")
    else:
        print("->None")
    x = x.next
