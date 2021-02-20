//
//  MemorizeApp.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        var add = Add()
        print(add)
        print(address(o: &add.a))
        add.a = 5
        print(add)
        print(address(o: &add.a))
        add.b = 10
        print(add)
        print(address(o: &add))
        return WindowGroup {
            UserView()
        }
    }
}

struct Add {
    var a = 0
    var b: Int = 0 {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
//        get {
//            return 1
//        }
//        set {
//
//        }
    }
    mutating func setA(d: Int) {
        a = d
    }
}

func address(o: UnsafeRawPointer) -> String {
    return String.init(format: "%018p", Int(bitPattern: o))
}

class A: NSObject {
    var b: Int = 1
}

