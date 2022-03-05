//
//  main.swift
//  BOJ-11399
//
//  Created by Jinbae Jeong on 2022/03/05.
//

import Foundation

/**
 
 ![BOJ-11399](./image.png)
 */

// 내 풀이

let N = Int(readLine()!)!
var P = readLine()!.split(separator: " ").map { Int($0)! }
var sum: [Int] = []

P.sort()
P.reduce(into: 0) {
    $0 = $0 + $1
    sum.append($0)
}

print(sum.reduce(0, +))

// 다른사람 풀이
let N2 = readLine()
var n = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var (s, c) = (0, [Int]())
for i in n {
    s += i
    c.append(s)
}

print(c.reduce(0, +))
