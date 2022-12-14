//
//  main.swift
//  BOJ-4673
//
//  Created by Jinbae Jeong on 2022/11/17.
//

import Foundation

var arr = Array(repeating: true, count: 10001)

for i in 0...10000 {
    let sum = selfNum(i)
    
    if sum < 10001 {
        arr[sum] = false
    }
}

for i in 0...10000 {
    if arr[i] {
        print(i)
    }
}

func selfNum(_ num: Int) -> Int {
    var sum = num
    var n = num
    
    while n != 0 {
        sum += n%10
        n /= 10
    }
    
    return sum
}

