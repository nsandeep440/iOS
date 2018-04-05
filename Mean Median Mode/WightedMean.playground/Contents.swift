//: Playground - noun: a place where people can play

import UIKit

let x = [10 ,40, 30, 50, 20]
let w = [1, 2, 3, 4, 5]

func roundToOneDecimalPoint(_ value: Double) -> String {
    let nf = NumberFormatter()
    nf.minimumFractionDigits = 1
    nf.maximumFractionDigits = 1
    let v = nf.string(from: NSNumber(value: value))
    return v!
}

func weightedMean(_ arr: [Int], weights: [Int]) -> String {
    var relativeFreq = [Int]()
    for i in 0..<arr.count {
        let val = arr[i] * weights[i]
        relativeFreq.append(val)
    }
    let totalWeights = weights.reduce(0, +)
    let totalFreq = relativeFreq.reduce(0, +)
    let wMean = Double(totalFreq) / Double(totalWeights)
    return roundToOneDecimalPoint(wMean)
}

let wMean = weightedMean(x, weights: w)
