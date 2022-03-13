//
//  main.swift
//  BOJ-2217
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

// 내풀이
let N = Int(readLine()!)!
var ropes: [Int] = []
var answer = [Int]()

for _ in 0..<N {
    ropes.append(Int(readLine()!)!)
}

ropes.sort()

for i in 0..<ropes.count {
    answer.append(ropes[i] * ropes[i...ropes.count - 1].count)
}

print(answer.max()!)

// 다른사람 풀이
var n = Int(readLine()!)!
var M = 0
var R = [Int]()
for _ in 1...n {
    R.append(Int(readLine()!)!)
}
let T = R.sorted(by: <)

for i in T {
    print (i, n, M)
    if i * n > M {
        M = i * n
    }
    n -= 1
}
