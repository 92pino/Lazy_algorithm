//
//  main.swift
//  BOJ-1546
//
//  Created by 정진배 on 2021/03/15.
//

import Foundation

/*
 let num = Int(readLine()!)!
 var list = readLine()!.split(separator: " ").map { Double($0)! }
 let max: Double = list.max()!

 list = list.map { $0 / max * 100}

 let answer: Double = list.reduce(0) { $0 + $1 } / Double(num)

 print(answer)
 */

let num = Double(readLine()!)!

var result = [Double]()

var input = readLine()!.split(separator: " ").map { Double($0)! }

let max = input.max()!

for i in 0..<input.count {
    result.append(input[i] / max * 100)
}

print(result.reduce(0, +) / num)
