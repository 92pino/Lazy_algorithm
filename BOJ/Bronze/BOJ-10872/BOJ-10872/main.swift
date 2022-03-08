//
//  main.swift
//  BOJ-10872
//
//  Created by Jinbae Jeong on 2022/03/08.
//

import Foundation

// 내 풀이
let N = Int(readLine()!)!

func factorial(n: Int) -> Int {
    var result = 1
    if n > 0 {
        for i in 1...n {
            result *= i
        }
    }
    return result
}
print(factorial(n: N))

// 다른사람 풀이
let n = Int(readLine()!)!
print((1...max(n,1)).reduce(1){ $0 * $1 })
