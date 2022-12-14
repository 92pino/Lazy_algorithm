//
//  main.swift
//  BOJ-10807
//
//  Created by Jinbae Jeong on 2022/11/17.
//

import Foundation

let n = Int(readLine()!)!, numbers = readLine()!.split(separator: " ").map { Int($0)! }, v = Int(readLine()!)!
print(numbers.filter { $0 == v}.count)
