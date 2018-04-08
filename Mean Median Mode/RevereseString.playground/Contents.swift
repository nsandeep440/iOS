//: Playground - noun: a place where people can play

import UIKit

var str = "Hello playground"

let strArray = str.lowercased().components(separatedBy: " ")
var revArray = [String]()
for word in strArray {
    let w = String(word.reversed())
    revArray.append(w)
}
revArray.joined(separator: " ")


