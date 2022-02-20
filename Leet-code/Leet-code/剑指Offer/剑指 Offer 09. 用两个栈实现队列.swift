//
//  剑指 Offer 09. 用两个栈实现队列.swift
//  Leet-code
//
//  Created by 任成 on 2022/2/19.
//  Copyright © 2022 任成. All rights reserved.
//
//
//  用两个栈实现一个队列。队列的声明如下，请实现它的两个函数 appendTail 和 deleteHead    ，分别完成在队列尾部插入整数和在队列头部删除整数的功能。(若队列中没有元素，deleteHead 操作返回 -1 )
//

//  示例 1：

//  输入：
//  ["CQueue","appendTail","deleteHead","deleteHead"]
//  [[],[3],[],[]]
//  输出：[null,null,3,-1]

//  示例 2：
//
//  输入：
//  ["CQueue","deleteHead","appendTail","appendTail","deleteHead","deleteHead"]
//  [[],[],[5],[2],[],[]]
//  输出：[null,-1,null,null,5,2]
//  提示：
//
//  1 <= values <= 10000
//  最多会对 appendTail、deleteHead 进行 10000 次调用


import Cocoa

class CQueue {
    
    private var stackAdd: [Int]
    private var stackRemove: [Int]

    init() {
        stackAdd = []
        stackRemove = []
    }
    
    func appendTail(_ value: Int) {
        if stackAdd.count > 10000 {
            // fatalError("数据太多")
        }
        stackAdd.append(value)
    }
    
    func deleteHead() -> Int {
        if stackAdd.isEmpty {
            return -1
        } else {
            stackRemove = stackAdd.reversed()
        }
        stackAdd.removeFirst()
        return stackRemove.removeLast()
    }
}

class 剑指_Offer_09_用两个栈实现队列: Core {
    
    override func run() {
        let obj = CQueue()
        print(obj.deleteHead())
        obj.appendTail(5)
        obj.appendTail(2)
        print(obj.deleteHead())
        print(obj.deleteHead())
    }

}
