//
//  main.swift
//  BOJ-2292
//
//  Created by Jinbae Jeong on 2022/12/13.
//

import Foundation

// 13 ==> 1 4 13
// 58 ==> 1, 6, 17, 34, 57 , 58
// default 1
// 6n

let n = Int(readLine()!)!
var sum = 1
var count = 0

while true {
    sum = sum + 6 * count
    
    if n <= sum {
        print(count + 1)
        break
    }
    
    count += 1
}
