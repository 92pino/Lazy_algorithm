//
//  main.swift
//  BOJ-9020
//
//  Created by Jinbae Jeong on 2022/12/14.
//

import Foundation

let r = Int(readLine()!)!
for _ in 0..<r {
    let n = Int(readLine()!)!
    
    let prime = primeArray(num: n)
    
    var result: (Int, Int) = (0, 0)
    
    for i in prime {
        for j in prime {
            if i > j { continue }

            if i + j == n {
                if result.0 < i {
                    result.0 = i
                    result.1 = j
                }
            }
        }
    }
    
    print(result.0, result.1)
}

func primeArray(num: Int) -> [Int] {
    var prime = [Bool](repeating: true, count: num + 1)
    prime[1] = false
    
    for i in 2...num {
        if !prime[i] { continue }
        
        for j in stride(from: i + i, through: num, by: i) {
            prime[j] = false
        }
    }
    
    var arr = [Int]()
    
    for i in 2...num {
        if prime[i] { arr.append(i) }
    }
    
    return arr
}
