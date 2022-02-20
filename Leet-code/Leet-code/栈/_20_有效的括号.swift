//
//  _20_有效的括号.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/10.
//  Copyright © 2020 任成. All rights reserved.
//
//
//  https://leetcode-cn.com/problems/valid-parentheses
//
//  给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。
//
//  有效字符串需满足：
//
//  左括号必须用相同类型的右括号闭合。
//  左括号必须以正确的顺序闭合。
//  注意空字符串可被认为是有效字符串。
//
//  示例 1:
//
//  输入: "()"
//  输出: true
//  示例 2:
//
//  输入: "()[]{}"
//  输出: true
//  示例 3:
//
//  输入: "(]"
//  输出: false
//  示例 4:
//
//  输入: "([)]"
//  输出: false
//  示例 5:
//
//  输入: "{[]}"
//  输出: true

import Cocoa

class _20_有效的括号: Core {
    
    override func run() {
        let str = "{(()[dsad]{asda})}"
        print(self.isValid(str))
    }
    
    func isValid(_ s: String) -> Bool {
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
