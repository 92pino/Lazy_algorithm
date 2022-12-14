//
//  main.swift
//  BOJ-4948
//
//  Created by Jinbae Jeong on 2022/12/14.
//

import Foundation

/**
 
 아레토네스의 체
 소수 구하는 최적의 방법
 
 */
while true {
    let n = Int(readLine()!)!
    let n2 = n * 2
    var count = 0

    if n == 0 { break }

    var prime = [Bool](repeating: true, count: n2 + 1)
    prime[1] = false
    
    for i in 2...n2 {
        // 이미 false일 경우 그냥 지나감 ==> 이미 이전 배수에서 제거
        if !prime[i] { continue }
        
        // stride(from:to:by:)는 to파라미터에 있는 수를 제외하고 카운트
        // stride(from:through:by:)는 to파라미터에 있는 수를 포함하고 카운트
        
        // i + i 부터 n2까지 i씩 증가
        for j in stride(from: i + i, through: n2, by: i) {
            prime[j] = false
        }
    }
    
    for i in n+1...n2 {
        if prime[i] { count += 1 }
    }
    
    print(count)
}
