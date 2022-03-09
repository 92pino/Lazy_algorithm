//
//  main.swift
//  BOJ-1929
//
//  Created by Jinbae Jeong on 2022/03/07.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }, M = input[0], N = input[1]
var isPrimeNumber = true

for i in M..<N {
    for j in 2..<i {
        if i % j == 0 {
            isPrimeNumber = false
        }
    }
    
    if isPrimeNumber == true {
        print(i)
    }
    
    isPrimeNumber = true
}
