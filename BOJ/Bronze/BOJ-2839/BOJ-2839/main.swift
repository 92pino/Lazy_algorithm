//
//  main.swift
//  BOJ-2839
//
//  Created by Jinbae Jeong on 2022/03/12.
//

import Foundation

var N = Int(readLine()!)!
let three = 3
let five = 5
var count = 0

//if N >= five {
//    for i in 0...N/five {
//        let remain = N - (i * five)
//
//        if remain % three == 0 {
//            let sum = (remain / three) + i
//            count = count == 0 ? sum : (sum < count ? sum : count)
//        }
//    }
//} else {
//    count = N%three != 0 ? -1 : N/three
//}
//
//print(count)

if N % 5 == 0 {
    count = N / 5
    N = 0
} else {
    while true {
        N -= 3
        count += 1
        
        if N % 5 == 0 {
            count += N / 5
            break
        }
    }
}

if N < 0 {
    count = -1
}
print(count)
