//: Playground - noun: a place where people can play

import UIKit
/**
 Divide and conquer.
 */

// recursive implementation

// returns index of element(Key) in array
/*func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    guard range.lowerBound < range.upperBound else {
        return nil
    }
    // split array in to half
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    // eg: key = 40, a[midpoint] = 20
    if a[midIndex] > key {
        // key lies in left half.
        return binarySearch(a, key: key, range: range.lowerBound..<midIndex)
    } else if a[midIndex] < key {
        // key lies in right half.
        return binarySearch(a, key: key, range: (midIndex + 1)..<range.upperBound)
    } else {
        // found key
        return midIndex
    }
}*/



//print()

func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

//let v = binarySearch(numbers, key: 43, range: 0 ..< numbers.count)
let v = binarySearch(numbers, key: 43)
