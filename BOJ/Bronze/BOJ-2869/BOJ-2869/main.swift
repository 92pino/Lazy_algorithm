//
//  main.swift
//  BOJ-2869
//
//  Created by Jinbae Jeong on 2022/03/06.
//

import Foundation

let input = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let X = input[0], Y = input[1]
    arr.append((X,Y))
}
arr.sort(by: <)
arr.forEach {
    print($0, $1)
}
