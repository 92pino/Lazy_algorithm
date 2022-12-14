//
//  main.swift
//  BOJ-3009
//
//  Created by Jinbae Jeong on 2022/03/21.
//

import Foundation

let r1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let r2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let r3 = readLine()!.split(separator: " ").map { Int(String($0))! }
var r4: [Int] = []
var temp = 0
for i in 0..<r1.count {
    if r1[i] == r2[i] {
        r4.append(r3[i])
    } else if r2[i] == r3[i] {
        r4.append(r1[i])
    } else if r1[i] == r3[i] {
        r4.append(r2[i])
    }
}
print(r4[0], r4[1])
