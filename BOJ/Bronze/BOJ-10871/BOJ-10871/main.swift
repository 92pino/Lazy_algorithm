//
//  main.swift
//  BOJ-10871
//
//  Created by Jinbae Jeong on 2022/04/18.
//

import Foundation

let X = readLine()!.split(separator: " ").map { Int($0)! }[1]
print(readLine()!.split(separator: " ").map { Int($0)! }.filter { X > $0 }.compactMap { String($0) }.joined(separator: " "))
