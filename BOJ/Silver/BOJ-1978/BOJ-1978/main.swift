//
//  main.swift
//  BOJ-1978
//
//  Created by Jinbae Jeong on 2022/03/07.
//

import Foundation

// 내코드
let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var cnt = 0
var isPrimeNumber = true

for i in 0..<input.count {
    if input[i] == 1 {
        isPrimeNumber = false
    } else {
        for j in 2..<input[i] {
            if input[i] % j == 0 {
                isPrimeNumber = false
            }
        }
    }
    
    if isPrimeNumber == true {
        cnt += 1
    }
    
    isPrimeNumber = true
}
print(cnt)

// 다른사람 코드
let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var count = nums.filter { i in
    i != 1 && [Int](2..<i).filter { i % $0 == 0 }.count == 0
}.count
print(count)
