//
//  _231_2的幂.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/14.
//  Copyright © 2020 任成. All rights reserved.
//
//
//  https://leetcode-cn.com/problems/power-of-two
//
//  给定一个整数，编写一个函数来判断它是否是 2 的幂次方。
//
//  示例 1:
//
//  输入: 1
//  输出: true
//  解释: 2^0 = 1
//  示例 2:
//
//  输入: 16
//  输出: true
//  解释: 2^4 = 16
//  示例 3:
//
//  输入: 218
//  输出: false


//  实现思路

import Cocoa

class _231_2的幂: Core {
    
    override func run() {
        let n = 16;
        print(isPowerOfTwo(n))
    }
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        var varN = n;
        while true {
            varN = varN >> 2
            print(varN)
            if varN == 1 {
                return true
            }
            if varN == 0 {
                break
            }
            
        }
        return false
    }
    
}
