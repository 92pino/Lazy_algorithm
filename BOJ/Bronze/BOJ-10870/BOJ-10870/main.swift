//
//  main.swift
//  BOJ-10870
//
//  Created by Jinbae Jeong on 2022/03/09.
//

import Foundation

// 내 풀이
let n = Int(readLine()!)!
var fibonacci: [Int] = []

while n >= fibonacci.count {
    fibonacci(fibonacci.count)
}

func fibonacci(_ n: Int) {
    if fibonacci.count < 2 {
        fibonacci.append(n)
    } else {
        fibonacci.append(fibonacci[n - 1] + fibonacci[n - 2])
    }
}

print(fibonacci.last!)

// 다른사람 풀이
func fivo(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    
    return fivo(n - 1) + fivo(n - 2)
}
print(fivo(fivo(Int(readLine()!)!)))
