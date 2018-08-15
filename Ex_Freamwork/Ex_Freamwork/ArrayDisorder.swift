//
//  ArrayDisorder.swift
//  Ex_Freamwork
//
//  Created by Chris on 2018/8/6.
//  Copyright © 2018年 MyPJ. All rights reserved.
//

import Foundation

open class ArrayDisorder: NSObject {

    open func disorder (orders:Array<Any>) -> Array<Any> {
        var temp = orders
        var count = Int(temp.count)
        while count > 0 {
            let index = Int(arc4random_uniform(UInt32(Int32(count))))
            let last =  Int(count-1)
            temp.swapAt(index, last)
            count -= 1
        }
        return temp
    }
}

