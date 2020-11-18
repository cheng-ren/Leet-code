//
//  有效的括号.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/10.
//  Copyright © 2020 任成. All rights reserved.
//

import Cocoa

class 有效的括号: BaseClass {
    
    override class func run() {
        super.run()
        defer {
            stopTiming()
        }
        startTiming()
        
        let str = "{(()[dsad]{asda})}"
        print(self.isValid(str))
    }
    
    static func isValid(_ s: String) -> Bool {
        // 异常处理
        guard !s.isEmpty else { return true }
        var handleStack: [Character] = []
        let standardChars: [Character] = ["{", "}", "(", ")", "[", "]"]
        for char in s {
            switch char {
                case "{":
                handleStack.append("}")
                case "(":
                handleStack.append(")")
                case "[":
                handleStack.append("]")
                default:
                    guard standardChars.contains(char) else { continue }
                    guard char == handleStack.popLast() else { return false }
            }
        }
        return handleStack.isEmpty
    }
}
