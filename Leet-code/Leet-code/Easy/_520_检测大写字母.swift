//
//  _520_检测大写字母.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/14.
//  Copyright © 2020 任成. All rights reserved.
//
//
//  https://leetcode-cn.com/problems/detect-capital
//
//  给定一个单词，你需要判断单词的大写使用是否正确。
//
//  我们定义，在以下情况时，单词的大写用法是正确的：
//
//  全部字母都是大写，比如"USA"。
//  单词中所有字母都不是大写，比如"leetcode"。
//  如果单词不只含有一个字母，只有首字母大写， 比如 "Google"。
//  否则，我们定义这个单词没有正确使用大写字母。
//
//  示例 1:
//
//  输入: "USA"
//  输出: True
//  示例 2:
//
//  输入: "FlaG"
//  输出: False
//  注意: 输入是由大写和小写拉丁字母组成的非空单词。

import Cocoa

class _520_检测大写字母: Core {
    
    override func run() {
        let str = "mL"
        print(detectCapitalUse(str))
    }
    
    func detectCapitalUse(_ word: String) -> Bool {
        guard word.count > 0 else { return false }
        guard word.count > 1 else { return true }
        guard word != word.uppercased() else { return true }
        guard word != word.lowercased() else { return true }
        guard word.first!.uppercased() == String(word.first!),
            String(word.suffix(word.count - 1)).lowercased() == String(word.suffix(word.count - 1)) else { return false }
        return true
    }
}
