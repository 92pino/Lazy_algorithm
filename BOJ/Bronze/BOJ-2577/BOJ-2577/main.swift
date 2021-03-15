//
//  main.swift
//  BOJ-2577
//
//  Created by 정진배 on 2021/03/15.
//

import Foundation

var multiple = 1
var result = [Int](repeating: 0, count: 10)

for _ in 0..<3 {
    let input = Int(readLine()!)!
    multiple *= input
}

let digits = String(multiple).compactMap { $0.wholeNumberValue }

for idx in 0..<digits.count {
    for num in 0..<10 {
        if num == digits[idx] {
          result[num] += 1
          break
        }
    }
}

for idx in 0..<10 {
    print(result [idx])
}
