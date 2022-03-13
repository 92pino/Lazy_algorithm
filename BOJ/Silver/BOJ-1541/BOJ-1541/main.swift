//
//  main.swift
//  BOJ-1541
//
//  Created by Jinbae Jeong on 2022/03/13.
//

import Foundation

let str = readLine()!.split(separator: "-").map { String($0) }
var plus = 0
var minus = 0
for (index, i) in str.enumerated() {
    if i.contains("+") {
        let sum = i.split(separator: "+").map { Int($0)! }.reduce(0, +)
        plus += sum
    } else {
        if index == 0 {
            minus += Int(i)!
        } else {
            minus -= Int(i)!
        }
    }
}

print(minus > 0 ? minus - plus : plus)
