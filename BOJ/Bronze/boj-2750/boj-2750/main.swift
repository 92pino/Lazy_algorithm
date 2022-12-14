//
//  main.swift
//  boj-2750
//
//  Created by Jinbae Jeong on 2022/09/30.
//

import Foundation

let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

arr.sort()

print(arr)
