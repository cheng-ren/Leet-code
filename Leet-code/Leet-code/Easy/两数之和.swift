//
//  两数之和.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/11.
//  Copyright © 2020 任成. All rights reserved.
//

//  给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 `两个` 整数，并返回他们的数组下标。
//
//  你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//
//
//
//  示例:
//
//  给定 nums = [2, 7, 11, 15], target = 9
//
//  因为 nums[0] + nums[1] = 2 + 7 = 9
//  所以返回 [0, 1]

import Cocoa

class 两数之和: BaseClass {
    override class func run() {
        super.run()
        defer {
            stopTiming()
        }
        startTiming()
        
        let nums = [2, 7, 11, 15]
        let target = 9
        print(twoSum(nums, target))
    }
    
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (i, n) in nums.enumerated() {
            if let index = dict[target - n] {
                return [i, index]
            }
            dict[n] = i
        }
        return []
    }
    
}
