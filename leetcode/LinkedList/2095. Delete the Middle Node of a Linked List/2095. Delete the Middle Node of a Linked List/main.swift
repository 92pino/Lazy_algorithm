//
//  main.swift
//  2095. Delete the Middle Node of a Linked List
//
//  Created by Twayair on 11/19/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteMiddle(_ head: ListNode?) -> ListNode? {
    guard let head, head.next != nil else { return nil }
    
    var slow: ListNode? = head
    var fast: ListNode? = head
    var prev: ListNode?
    
    while fast != nil && fast?.next != nil {
        fast = fast?.next?.next
        prev = slow
        slow = slow?.next
    }
    
    prev?.next = slow?.next
    
    return head
}
