//
//  main.swift
//  BOJ-10989
//
//  Created by Jinbae Jeong on 2022/09/30.
//

import Foundation

let N = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

let pivot = arr.first!
let left = arr.filter { $0 < pivot }
let right = arr.filter { $0 > pivot }

func sort(_ arr: [Int]) -> [Int] {
    return sort(left) + [pivot] + sort(right)
}


print(sort(arr))
