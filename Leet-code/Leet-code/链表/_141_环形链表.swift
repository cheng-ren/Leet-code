//
//  _141_环形链表.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/23.
//  Copyright © 2020 任成. All rights reserved.
//
//  https://leetcode-cn.com/problems/linked-list-cycle/
//
//  给定一个链表，判断链表中是否有环。
//
//  如果链表中有某个节点，可以通过连续跟踪 next 指针再次到达，则链表中存在环。 为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。注意：pos 不作为参数进行传递，仅仅是为了标识链表的实际情况。
//
//  如果链表中存在环，则返回 true 。 否则，返回 false 。
//
//  输入：head = [3,2,0,-4], pos = 1
//  输出：true
//  解释：链表中有一个环，其尾部连接到第二个节点。
//
//  输入：head = [1,2], pos = 0
//  输出：true
//  解释：链表中有一个环，其尾部连接到第一个节点。
//

import Cocoa

class _141_环形链表: Core {
    override func run() {
        let head = ListNode(4)
        let first = ListNode(5)
        let second = ListNode(1)
        let third = ListNode(9)
        head.next = first
        first.next = second
        second.next = third
        third.next = first
        
        print(hasCycle(head))
    }
    
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil && head?.next != nil else { return false }
        var slow = head
        var fast = head?.next
        while fast != nil && fast?.next != nil {
            if fast?.val == slow?.val { return true }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
    
}
