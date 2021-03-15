//
//  main.swift
//  BOJ-3052
//
//  Created by 정진배 on 2021/03/15.
//

import Foundation

var result = [Int]()

for _ in 0..<10 {
    let input = Int(readLine()!)!

    result.append(input % 42)
}

print(Set(result).count)
