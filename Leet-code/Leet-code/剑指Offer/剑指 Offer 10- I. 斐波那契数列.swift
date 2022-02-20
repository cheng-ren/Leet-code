//
//  剑指 Offer 10- I. 斐波那契数列.swift
//  Leet-code
//
//  Created by 任成 on 2022/2/19.
//  Copyright © 2022 任成. All rights reserved.
//

//  写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项（即 F(N)）。斐波那契数列的定义如下：
//
//  F(0) = 0,   F(1) = 1
//  F(N) = F(N - 1) + F(N - 2), 其中 N > 1.
//  斐波那契数列由 0 和 1 开始，之后的斐波那契数就是由之前的两数相加而得出。
//
//  答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。
//
//

//  示例 1：
//
//  输入：n = 2
//  输出：1

//  示例 2：
//
//  输入：n = 5
//  输出：5
//
//
//  提示：
//
//  0 <= n <= 100

import Cocoa

class Solution01 {
    func fib(_ n: Int) -> Int {
        if n < 0 { return -1 }
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        return fib(n - 2) + fib(n - 1)
    }
}

class Solution {
    func fib(_ n: Int) -> Int {
        if n < 1 { return 0 }
        var left = 1
        var right = 0
        for _ in 1..<n {
            let sum = (left + right) % Int(1e9+7)
            right = left
            left = sum
        }
        return left
    }
}

class Solution02 {
    
    func fib(_ n: Int) -> Int {
        if n < 1 { return 0 }
        if n <= 2 { return 1 }
        var array: [Int] = Array(repeating: 0, count: n+1)
        array[1] = 1
        for i in 2...n {
            array[i] = (array[i-1] + array[i-2]) % Int(1e9 + 7)
        }
        return array[n]
    }
    
}
class 剑指_Offer_10__I斐波那契数列: Core {
    
    override func run() {
        print(Solution02().fib(7))
    }
    
    
}
