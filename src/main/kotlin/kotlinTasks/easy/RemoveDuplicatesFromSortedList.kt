package kotlinTasks.easy


//Example:
// var li = ListNode(5)
// var v = li.`val`
// * Definition for singly-linked list.
class ListNode(var `val`: Int) {
    var next: ListNode? = null
}
class RemoveDuplicatesFromSortedList {
    fun deleteDuplicates(head: ListNode?): ListNode? {
        if (head?.next == null) return head
        return head
    }
}