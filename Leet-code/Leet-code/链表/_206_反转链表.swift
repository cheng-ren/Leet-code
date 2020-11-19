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
        
        print(reverseList(<#T##head: ListNode?##ListNode?#>))
    }
    
    static func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        head
    }
    
    
}
