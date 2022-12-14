//
//  main.swift
//  BOJ-2475
//
//  Created by Jinbae Jeong on 2022/10/16.
//

import Foundation

let N = readLine()!.split(separator: " ").map { Int($0)! }
print(N.map { $0 * $0 }.reduce(0, +) % 10)
