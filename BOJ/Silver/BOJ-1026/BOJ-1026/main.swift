//
//  main.swift
//  BOJ-1026
//
//  Created by Jinbae Jeong on 2022/03/13.
//

import Foundation

// 내 풀이
let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
let B = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)

var array: [Int] = []

for (index, i) in A.enumerated() {
    for (idx, j) in B.enumerated() {
        if index == idx {
            array.append(i * j)
        }
    }
}

print(array.reduce(0, +))

// 다른사람 풀이
let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
let b = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
var sum = 0

for i in 0..<n {
    sum += a[i] * b[i]
}
print(sum)
