//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 
 First line contains -> n (students in the class), k (the cancellation threshold)
 Second line contains -> s space-separated integers (Array [Int]) describing arrival times of each student
 
 given arrival time, determine the class is cancelled.
 
 -ve value => early and 0 = on time
 +ve value => late
 */

let values = [4, 3] // 4 = students count, 3 = threshold attendance to start class
let attendence = [-1, -3, 4, 2]

let n = values[0]
let k = values[1]

func cancelClass() -> String {
    var counts = 0
    for i in attendence {
        if i <= 0 {
            counts += 1
        }
    }
    if counts < k {
        // cancelled
        return "YES"
    }
    // Not cancelled
    return "NO"
}
let val = cancelClass()
print(val)

