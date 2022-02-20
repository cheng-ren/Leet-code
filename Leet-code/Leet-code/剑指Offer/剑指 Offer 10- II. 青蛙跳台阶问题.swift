//
//  剑指 Offer 10- II. 青蛙跳台阶问题.swift
//  Leet-code
//
//  Created by 任成 on 2022/2/20.
//  Copyright © 2022 任成. All rights reserved.
//
//    一只青蛙一次可以跳上1级台阶，也可以跳上2级台阶。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
//
//    答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。
//
//    示例 1：
//
//    输入：n = 2
//    输出：2

//    示例 2：
//
//    输入：n = 7
//    输出：21

//    示例 3：
//
//    输入：n = 0
//    输出：1


import Cocoa

class 剑指_Offer_10_II_青蛙跳台阶问题: Core {
    
    class Solution {
        func numWays(_ n: Int) -> Int {
            if n < 2 { return 1 }
            if n == 2 { return 2 }
            return numWays(n-1) + numWays(n-2)
        }
    }
    
    class Solution01 {
        func numWays(_ n: Int) -> Int {
            if n < 2 { return 1 }
            if n == 2 { return 2 }
            var left = 1
            var right = 0
            for _ in 0..<n {
                let sum = (left + right) % Int(1e9 + 7)
                right = left
                left = sum
            }
            return left
        }
    }

    override func run() {
        print(Solution01().numWays(7))
    }
}
