//
//  Core.swift
//  Leet-code
//
//  Created by 任成 on 2022/2/19.
//  Copyright © 2022 任成. All rights reserved.
//

import Foundation

class Core: NSObject {
    
    required override init() {
        super.init()
        swizzle_class(clz: object_getClass(self), originalSelector: #selector(run), swizzledSelector: #selector(run_swizzle))
    }
    
    @objc dynamic func run() {
        fatalError("需实现run方法并且不要调用父类方法")
    }
    
    @objc dynamic func run_swizzle() {
        print("开始执行 --> \(object_getClass(self)!)")
        let startTimeInterval = Date().timeIntervalSince1970 * 1000
        run_swizzle()
        let endTimeInterval = Date().timeIntervalSince1970 * 1000
        print(String(format: "运行耗时 --> %.3f毫秒", endTimeInterval - startTimeInterval))
    }
    
    static func run() {
        let object = self.init()
        object.run()
    }
    
}

func swizzle_class(clz: AnyClass?, originalSelector: Selector, swizzledSelector: Selector) {
    let originalMethod = class_getInstanceMethod(clz, originalSelector)
    let swizzledMethod = class_getInstanceMethod(clz, swizzledSelector)
    let didAddMethod: Bool = class_addMethod(clz, originalSelector, method_getImplementation(swizzledMethod!), method_getTypeEncoding(swizzledMethod!))
    if didAddMethod {
        class_replaceMethod(clz, swizzledSelector, method_getImplementation(originalMethod!), method_getTypeEncoding(originalMethod!))
    } else {
        method_exchangeImplementations(originalMethod!, swizzledMethod!)
    }
}
