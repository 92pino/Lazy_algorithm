//
//  main.swift
//  BOJ-2581
//
//  Created by Jinbae Jeong on 2022/03/07.
//

import Foundation

let M = Int(readLine()!)!
let N = Int(readLine()!)!
var arr: [Int] = []
var isPrimeNumber = true

for i in M...N {
    if i == 1 {
        isPrimeNumber = false
    } else {
        for j in  2..<i {
            if i % j == 0 {
                isPrimeNumber = false
            }
        }
        
        if isPrimeNumber == true {
            arr.append(i)
        }
    }
    
    isPrimeNumber = true
}

if arr.count == 0 {
    print(-1)
} else {
    print(arr.reduce(0, +))
    print(arr.min()!)
}
