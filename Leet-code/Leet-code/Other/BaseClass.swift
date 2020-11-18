//
//  Timing.swift
//  Leet-code
//
//  Created by 任成 on 2020/9/11.
//  Copyright © 2020 任成. All rights reserved.
//

import Cocoa

class BaseClass: NSObject, Perform {
    static var timeInterval: TimeInterval = 0
    
    class func run() {
        print(String(format: "%@", NSStringFromClass(self)))
    }
    
    class func startTiming() {
        timeInterval = Date().timeIntervalSince1970 * 1000
    }
    
    class func stopTiming() {
        print(String(format: "耗时:%.03fms", (Date().timeIntervalSince1970 * 1000 - timeInterval)))
    }
}
