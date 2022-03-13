//
//  main.swift
//  BOJ-1541
//
//  Created by Jinbae Jeong on 2022/03/13.
//

import Foundation

let str = readLine()!.split(separator: "-").map { String($0) }
let first = str[0].split(separator: "+").map { Int(String($0))! }
var result = 0
var temp = 0

for i in first {
    result += i
}

for i in 1..<str.count {
    temp += str[i].split(separator: "+").map { Int(String($0))! }.reduce(0, +)
}

print(result-temp)
