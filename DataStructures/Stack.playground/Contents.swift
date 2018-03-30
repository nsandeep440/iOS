//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public struct SNStack<T> {
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
        return array.popLast()
    }
    
    /**
     Returns the top element on the stack
     */
    public func topElement() -> T? {
        return array.last
    }
}

// Int type
var stackedArray = SNStack<Int>()
print(stackedArray.isEmpty)
stackedArray.push(4)
stackedArray.push(10)
stackedArray.push(20)
print(stackedArray)
print(stackedArray.topElement())
stackedArray.pop()
print(stackedArray)
print(stackedArray.count)

// Any type
var strStack = SNStack<Any>()
strStack.push("First")
strStack.push(5)
strStack.push(4.5)
strStack.push(stackedArray)
print(strStack)
print(strStack.topElement())
strStack.pop()
print(strStack)











