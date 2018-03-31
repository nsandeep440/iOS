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




