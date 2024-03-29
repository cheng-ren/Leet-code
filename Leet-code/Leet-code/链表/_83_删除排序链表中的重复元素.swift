//
//  _83_删除排序链表中的重复元素.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/23.
//  Copyright © 2020 任成. All rights reserved.
//
//  https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
//
//  给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
//
//  示例 1:
//
//  输入: 1->1->2
//  输出: 1->2
//
//
//  示例 2:
//
//  输入: 1->1->2->3->3
//  输出: 1->2->3
//

import Cocoa

class _83_删除排序链表中的重复元素: Core {
    override func run() {
        let head = ListNode(1)
        let first = ListNode(2)
        let second = ListNode(2)
        let third = ListNode(3)
        head.next = first
        first.next = second
        second.next = third
        
        print(deleteDuplicates(head))
    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        var nextNode = head
        while nextNode?.next != nil {
            if nextNode?.val == nextNode?.next?.val {
                nextNode?.val = nextNode!.next!.val
                nextNode?.next = nextNode?.next?.next
            } else {
                nextNode = nextNode?.next
            }
        }
        return head
    }
}
