//
//  main.swift
//  BOJ-10773
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

let K = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<K {
    let i = Int(readLine()!)!
    if i == 0 {
        arr.removeLast()
    } else {
        arr.append(i)
    }
}
print(arr.reduce(0, +))
