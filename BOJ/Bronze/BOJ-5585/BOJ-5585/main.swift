//
//  main.swift
//  BOJ-5585
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

let N = Int(readLine()!)!
var changes = 1000-N
var count = 0
var arr = [500, 100, 50, 10, 5, 1]

while changes > 0 {
    for i in arr {
        count += changes / i
        changes %= i
    }
}

print(count)
