//
//  main.swift
//  BOJ-2747
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

// 시간초과
//func fibonaci(_ n: Int) -> Int {
//    if n == 0 {
//        return 0
//    } else if n == 1 {
//        return 1
//    }
//
//    return fibonaci(n - 1) + fibonaci(n - 2)
//}
//
//print(fibonaci(Int(readLine()!)!))

let N = Int(readLine()!)!
var count = 0
var arr = [Int]()
while N + 1 > count {
    if count == 0 {
        arr.append(0)
    } else if count == 1 {
        arr.append(1)
    } else {
        arr.append(arr[count - 1] + arr[count - 2])
    }
    count += 1
}
print(arr.last!)
