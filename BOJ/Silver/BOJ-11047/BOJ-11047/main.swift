//
//  main.swift
//  BOJ-11047
//
//  Created by Jinbae Jeong on 2022/03/12.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = input[0]
var k = input[1]
var arr: [Int] = []
var count = 0

for _ in 0..<n {
    let A = Int(readLine()!)!
    if A <= k {
        arr.append(A)
    }
}

arr = Array(arr.reversed())

for value in arr {
    if value <= k {
        count += (k / value)
        k = (k % value)
    }
    
    if input[1] == 0 {
        break
    }
}

print(count)
