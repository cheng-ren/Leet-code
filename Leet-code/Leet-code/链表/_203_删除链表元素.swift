//
//  _203_删除链表元素.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/23.
//  Copyright © 2020 任成. All rights reserved.
//
//  https://leetcode-cn.com/problems/remove-linked-list-elements/
//
//  删除链表中等于给定值 val 的所有节点。
//
//  示例:
//
//  输入: 1->2->6->3->4->5->6, val = 6
//  输出: 1->2->3->4->5


import Cocoa

class _203_删除链表元素: BaseClass {
    override class func run() {
        super.run()
        defer {
            stopTiming()
        }
        startTiming()
        
        let head = ListNode(4)
        let first = ListNode(5)
        let second = ListNode(1)
        let third = ListNode(5)
        head.next = first
        first.next = second
        second.next = third
        
        print(removeElements(head, 5))
    }
    
    static func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var head = head
        var next = head
        var pre: ListNode?
        while next != nil {
            if next?.val == val {
                if next?.next == nil {
                    if head == next {
                        head = nil
                    } else {
                        pre?.next = nil
                    }
                    pre = next
                    next = next?.next
                } else {
                    next?.val = next?.next?.val ?? 0
                    next?.next = next?.next?.next
                }
            } else {
                pre = next
                next = next?.next
            }
        }
        return head
    }
}
