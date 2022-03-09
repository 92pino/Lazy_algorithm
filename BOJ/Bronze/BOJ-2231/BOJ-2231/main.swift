//
//  main.swift
//  BOJ-2231
//
//  Created by Jinbae Jeong on 2022/03/09.
//

import Foundation

let N = Int(readLine()!)!
var arr: Int?

for i in 0..<N {
    let sum = Array(String(i)).map { Int(String($0))! }.reduce(0, +)
    if i + sum == N {
        arr = i
        break
    }
}

print(arr ?? 0)
