//
//  main.swift
//  BOJ-1110
//
//  Created by Jinbae Jeong on 2022/04/18.
//

import Foundation

let N = Int(readLine()!)!
var num = N
var count = 0

while true {
    let rightNum = ((num / 10) + (num % 10)) % 10
    let sum = num % 10
    
    num = sum * 10 + rightNum
    count += 1
    if num == Int(N) {
        break
    }
}

print(count)
