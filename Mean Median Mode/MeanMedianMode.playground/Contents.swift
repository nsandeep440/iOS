//: Playground - noun: a place where people can play

import UIKit

var str = "Mean Median Mode"
print(str)


let list = [64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060,4978, 67060]
//let list = [2, 3, 7, 2, 1, 3 ,4, 6]


func roundToOneDecimalPoint(_ value: Double) -> String {
    let nf = NumberFormatter()
    nf.minimumFractionDigits = 1
    nf.maximumFractionDigits = 1
    let v = nf.string(from: NSNumber(value: value))
    return v!
}

// Mean

func mean(_ arr: [Int]) -> Double {
    //var a = arr.flatMap { Double($0) }
    let count = arr.count
    let value = arr.reduce(0, +)
    let m = Double(value)/Double(count)
    return m
}
func median(_ arr: [Int]) -> Double {
    let count = arr.count
    // sort the array first
    let sortArr = arr.sorted()
    //var output: Double
    if count % 2 == 0 {
        // even
        let midpoint = (count / 2)
        let beforeMidpoint = midpoint - 1
        let output = Double(sortArr[midpoint] + sortArr[beforeMidpoint]) / 2.0
        return output
    } else {
        let midpoint = (count / 2)
        let output = Double(sortArr[midpoint])
        return output
    }
    //let o = roundToOneDecimalPoint(output)
    //return o
}

func mode(_ arr: [Int]) -> Int {
    //var listA = arr
    var countDict = [Int : Int]()
    arr.forEach { countDict[$0, default: 0] += 1 }
    let maxC = countDict.sorted { $0 < $1 }.max { $0.value < $1.value }
    print(maxC?.key ?? "")
    let m = maxC?.key
    return m!
}

let mea = mean(list)
let med = median(list)
let mod = mode(list)

/**
 Hacker rank solved problem.

var list = [64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060]

func roundToOneDecimalPoint(_ value: Double) -> String {
    let nf = NumberFormatter()
    nf.minimumFractionDigits = 1
    nf.maximumFractionDigits = 1
    let v = nf.string(from: NSNumber(value: value))
    return v ?? "0.0"
}
func mean(_ arr: [Int]) -> String {
    let count = arr.count
    let value = arr.reduce(0, +)
    let m = Double(value)/Double(count)
    return roundToOneDecimalPoint(m)
}

func median(_ arr: [Int]) -> String {
    let count = arr.count
    // sort the array first
    let sortArr = arr.sorted()
    var output: Double
    if count % 2 == 0 {
        // even
        let midpoint = (count / 2)
        let beforeMidpoint = midpoint - 1
        output = Double(sortArr[midpoint] + sortArr[beforeMidpoint]) / 2.0
    } else {
        let midpoint = (count / 2)
        output = Double(sortArr[midpoint])
    }
    let o = roundToOneDecimalPoint(output)
    return o
}

func mode(_ arr: [Int]) -> Int {
    var countDict = [Int : Int]()
    arr.forEach { countDict[$0, default: 0] += 1 }
    let maxC = countDict.sorted { $0 < $1 }.max { $0.value < $1.value }
    let m = maxC?.key
    return m!
}


let count = readLine()
let input = readLine()
if let input = input {
    let inputNumberCharacters = input.split(separator: " ")
    let numbers = inputNumberCharacters.map { Int(String($0))! }
    print(mean(numbers))
    print(median(numbers))
    print(mode(numbers))
} else {
    print(mean(list))
    print(median(list))
    print(mode(list))
}


public func readLn<T>() -> T {
    if (T.self as? String.Type != nil) {
        return getLine()
    } else if (T.self as? Int.Type != nil) {
        return getLine().toInt()!
    } else if (T.self as? [String].Type != nil) {
        return getLine().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    } else if (T.self as? [Int].Type != nil) {
        let words: [String] = readLn()
        return words.map { $0.toInt()! }
    } else {
        return getLine()
    }
}
*/


