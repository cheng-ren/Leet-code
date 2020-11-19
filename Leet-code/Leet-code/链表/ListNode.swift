//
//  ListNode.swift
//  Leet-code
//
//  Created by 任成 on 2020/11/19.
//  Copyright © 2020 任成. All rights reserved.
//

import Cocoa

public class ListNode: NSObject {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public override var description: String {
        var prin: String = "["
        var nextNode: ListNode? = self
        while nextNode != nil {
            prin += " \(nextNode!.val) ->"
            nextNode = nextNode?.next
        }
        
        prin = String(prin.prefix(prin.count - 2))
        return prin + "]"
    }
}
