//: Playground - noun: a place where people can play

import UIKit
/*
func InsersionSort(_ array: [Int]) -> [Int] {
    var a = array
    for i in 1..<a.count {
        var j = i
        let currentValue = a[j]
        while j > 0 && currentValue < a[j-1] {
            a[j] = a[j-1]
            j -= 1
        }
        a[j] = currentValue
    }
    return a
}
*/

// Generic way

func InsersionSort<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    var a = array
    for i in 1..<a.count {
        var j = i
        let currentValue = a[j]
        while j > 0 && isOrderedBefore(currentValue, a[j-1]) {
            a[j] = a[j-1]
            j -= 1
        }
        a[j] = currentValue
    }
    return a
}

let list = [10, 1, 3, 30, 4, 2, 100]

//print(InsersionSort(list, <))
let a = InsersionSort(list) { $0 < $1 }
print(a)


/**
 Performance
 */
/*
 Insertion sort is really fast if the array is already sorted. but this is not true for all search algorithms
 
 The worst-case and average case performance of insertion sort is O(n^2). That's because there are two nested loops in this function. Other sort algorithms, such as quicksort and merge sort, have O(n log n) performance, which is faster on large inputs.
 
 Insertion sort is actually very fast for sorting small arrays. Some standard libraries have sort functions that switch from a quicksort to insertion sort when the partition size is 10 or less.
 */










