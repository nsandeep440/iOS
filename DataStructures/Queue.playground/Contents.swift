//: Playground - noun: a place where people can play

import UIKit

/**
 Queue:
 It is a list where you can only insert new items at the back and remove items from the front.
 
 This ensures that the first item you "enqueue" is also the first item you "dequeue"
 First come, first serve!
 A queue gives you a FIFO or first-in, first-out order
 */

public struct SNQueue<T> {
    fileprivate var array = [T]()
    
    /**
     Checks for emptiness
     */
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /**
     Returns number of elements in the queue
     */
    public var count: Int {
        return array.count
    }
    
    /**
     Add elements to the queue
     */
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    /**
     Removes and returns the first element from queue
     */
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    /**
     Returns the first element only
     */
    public var firstElement: T? {
        return array.first
    }
}

/**
 To make dequeuing efficient, we can also reserve some extra free space but this time at the front of the array.
 We must write this code ourselves because the built-in Swift array does not support it.
 
 The main idea is whenever we dequeue an item, we do not shift the contents of the array to the front (slow and O(n) operation) but mark the item's position in the array as empty (fast)
 
 This trimming procedure involves shifting memory which is an O(n) operation.
 Because this only happens once in a while, dequeuing is O(1) on average
 */

public struct SNSwiftQueue<T> {
    
    fileprivate var array = [T?]()
    /**
     Position of the first element in the queue after dequeing
     */
    fileprivate var head = 0
    
    /**
     Returns # elements in Queue from the current head position
     */
    public var count: Int {
        return array.count - head
    }
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    /**
     Add elements to the queue
     */
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    /**
     Returns the first element and removes only when head cound is 25% away from zero position.
     */
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else {
            return nil
        }
        // make nil at head position
        array[head] = nil
        // increase the head count
        head += 1
        
        // get head cound percentage
        let percentage = Double(head) / Double(array.count)
        //if array.count > 50 && percentage > 0.25 {
        // use count or only percentage or both.
        if percentage > 0.25 {
            // removes the specified # elements from beginning of the collection.
            array.removeFirst(head)
            // reset head count
            head = 0
        }
        return element
    }
    
    public var firstElement: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}

// Example

var queue = SNSwiftQueue<String>()
queue.enqueue("San")
queue.enqueue("Rak")
queue.enqueue("Ram")
queue.enqueue("Rav")

print(queue.array)

queue.dequeue()
print(queue.count)
print(queue.array)
print(queue.firstElement)
queue.dequeue()
print(queue.count)
print(queue.firstElement)
print(queue.array)



















