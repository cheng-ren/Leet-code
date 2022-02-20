//
//  剑指 Offer 11. 旋转数组的最小数字.swift
//  Leet-code
//
//  Created by 任成 on 2022/2/20.
//  Copyright © 2022 任成. All rights reserved.
//
//
//    把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。
//
//    给你一个可能存在 重复 元素值的数组 numbers ，它原来是一个升序排列的数组，并按上述情形进行了一次旋转。请返回旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一次旋转，该数组的最小值为1。
//
//    示例 1：
//
//    输入：[3,4,5,1,2]
//    输出：1
//    示例 2：
//
//    输入：[2,2,2,0,1]
//    输出：0

import Cocoa

class 剑指_Offer_11_旋转数组的最小数字: Core {

    class Solution01 {
        func minArray(_ numbers: [Int]) -> Int {
            guard !numbers.isEmpty else { return 0 }
            if numbers.count == 1 { return numbers[0] }
            var sepIndex = 0
            var flag = -1000
            for num in numbers {
                if num < flag { continue }
                flag = num
                sepIndex += 1
            }
            return numbers[sepIndex]
        }
    }
    
    override func run() {
        print(Solution01().minArray([5,5,6,1,2,3,4]))
    }
    
}
