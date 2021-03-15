//
//  main.swift
//  BOJ-4344
//
//  Created by 정진배 on 2021/03/16.
//

import Foundation

let input = Int(readLine()!)!

var percentage = [Double]()

for _ in 0..<input {
    let list: [Double] = readLine()!.split { $0 == " " }.map { Double($0)! }
    let avg: Double = (list.reduce(0, +) - list[0]) / list[0]

    let passStudent: [Double] = list.filter { $0 > avg }

    let answer: Double! = Double(passStudent.count) / list[0] * 100

    print(String(format: "%.3f", answer) + "%")
}
