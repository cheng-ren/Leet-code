//
//  _14_最长公共前缀.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/10.
//  Copyright © 2020 任成. All rights reserved.
//
//
//  https://leetcode-cn.com/problems/longest-common-prefix
//
//  编写一个函数来查找字符串数组中的最长公共前缀。
//
//  如果不存在公共前缀，返回空字符串 ""。
//
//  示例 1:
//
//  输入: ["flower","flow","flight"]
//  输出: "fl"
//  示例 2:
//
//  输入: ["dog","racecar","car"]
//  输出: ""
//  解释: 输入不存在公共前缀。
//  说明:
//
//  所有输入只包含小写字母 a-z 。

import Cocoa

class _14_最长公共前缀: BaseClass {
    
    override class func run() {
        super.run()
        defer {
            stopTiming()
        }
        startTiming()
        
        let strs = ["cacecar","cacecar","car"]
        print(longestCommonPrefix(strs))
    }
    
    class func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        if strs.count == 1 { return strs[0] }
        
        let strs = strs.sorted()
        var res = ""
        for (char1, char2) in zip(strs.first!, strs.last!) {
            if char1 != char2 { break }
            res += String(char1)
        }
        return res
    }
    
}
