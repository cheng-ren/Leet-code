//
//  反转链表.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/18.
//  Copyright © 2020 任成. All rights reserved.
//
//
//  https://leetcode-cn.com/problems/reverse-linked-list
//
//  反转一个单链表。
//
//  示例:
//
//  输入: 1->2->3->4->5->NULL
//  输出: 5->4->3->2->1->NULL

import Cocoa

class _206_反转链表: BaseClass {
    
    override class func run() {
        super.run()
        defer {
            stopTiming()
        }
        startTiming()
        
        let head    = ListNode(4)
        let first   = ListNode(5)
        let second  = ListNode(1)
        let third   = ListNode(9)
        
        head.next   = first
        first.next  = second
        second.next = third
        
        print(head)
        print(reverseList1(head)! as Any)
    }
    
    /// 递归实现
    static func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else { return head }
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
    
    /// head -> [ 4 -> 5 -> 1 -> 9 ]
    /// new -> []
    ///
    /// head  -> [ 5 -> 1 -> 9 ]
    /// new   -> [ 4 ]
    ///
    /// head  -> [ 1 -> 9 ]
    /// new   -> [ 5 -> 4 ]
    ///
    /// 非递归实现
    static func reverseList1(_ head: ListNode?) -> ListNode? {
        var head = head
        var newHead: ListNode?
        while head != nil {
            let tmp = head?.next
            head?.next = newHead
            newHead = head
            head = tmp
        }
        return newHead
    }
    
    
}
