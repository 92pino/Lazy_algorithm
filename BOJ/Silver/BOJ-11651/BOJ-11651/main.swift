//
//  main.swift
//  BOJ-11651
//
//  Created by Jinbae Jeong on 2022/10/01.
//

import Foundation

let N = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0], input[1]))
}

arr.sort {
    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
}

arr.forEach { print("\($0.0) \($0.1)") }
