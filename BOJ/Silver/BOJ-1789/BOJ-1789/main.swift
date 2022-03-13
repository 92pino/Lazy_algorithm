//
//  main.swift
//  BOJ-1789
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

let S = Int(readLine()!)!
var sum = 0
var result = 0

for i in 1... {
    sum += i
    if sum > S {
        break
    }
    result = i
}
print(result)
