//
//  _876_链表的中间结点.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/23.
//  Copyright © 2020 任成. All rights reserved.
//
//  https://leetcode-cn.com/problems/middle-of-the-linked-list/
//
//  给定一个头结点为 head 的非空单链表，返回链表的中间结点。
//
//  如果有两个中间结点，则返回第二个中间结点。
//
//  示例 1：
//
//  输入：[1,2,3,4,5]
//  输出：此列表中的结点 3 (序列化形式：[3,4,5])
//  返回的结点值为 3 。 (测评系统对该结点序列化表述是 [3,4,5])。
//  注意，我们返回了一个 ListNode 类型的对象 ans，这样：
//  ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, 以及 ans.next.next.next = NULL.
//  示例 2：
//
//  输入：[1,2,3,4,5,6]
//  输出：此列表中的结点 4 (序列化形式：[4,5,6])
//  由于该列表有两个中间结点，值分别为 3 和 4，我们返回第二个结点。
//
//
//  提示：
//  给定链表的结点数介于 1 和 100 之间。

import Cocoa

class _876_链表的中间结点: Core {
    override func run() {
        let head = ListNode(1)
        let first = ListNode(2)
        let second = ListNode(3)
        let third = ListNode(4)
        let four = ListNode(5)
        head.next = first
        first.next = second
        second.next = third
        third.next = four
        
        print(middleNode(head))
    }
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head?.next
        while fast != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        return slow
    }
}
