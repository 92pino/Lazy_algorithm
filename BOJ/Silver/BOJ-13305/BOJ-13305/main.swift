//
//  main.swift
//  BOJ-13305
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

let _ = readLine()!
var L = readLine()!.split(separator: " ").map { Int(String($0))! }
var P = readLine()!.split(separator: " ").map { Int(String($0))! }
P.removeLast()

var total = P[0] * L[0]
var min = P[0]
var length = 0

for i in 1..<P.count {
    length += 1
    if P[i] < min { min = P[i] }
    total += min * L[length]
}
print(total)
