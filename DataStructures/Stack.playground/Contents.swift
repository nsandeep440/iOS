//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public struct NSStack<T> {
    // Create Array and use it for stacking
    // LIFO
    fileprivate var array = Array<T>()
    
    /**
     checks for stack emptiness
     */
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /**
     returns stack count
    */
    public var count: Int {
        return array.count
    }
    
    /**
     Appends the new element on the stack
     */
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    /**
     Removes and returns the last element
     */
    public mutating func pop() -> T? {
        return array.last
    }
    
    
    
}
