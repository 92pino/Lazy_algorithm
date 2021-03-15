//
//  main.swift
//  BOJ-10818
//
//  Created by 정진배 on 2021/03/15.
//

import Foundation

if let num = readLine() {
    if let input = readLine() {
        let arr = input.split(separator: " ").map { Int($0)! }

        var min = 0
        var max = 0

        for i in 0..<Int(num)! {
            for j in 0..<Int(num)! {
                if i != j {
                    if arr[i] > arr[j] {
                        min = arr[j]
                        max = arr[i]
                    }
                }
            }
        }

        print(min, max)
    }
}

// 왜 계속 시간초과가 나는지 모르겠다....
//if let _ = readLine() {
//    let list: [Int]? = readLine()?.split(separator: " ").map{ Int($0)! }.sorted(by: { $0 < $1 })
//
//    print(list![0], (list?.last)!)
//}

// 맨처음
//if let _  = readLine() {
//    if let input = readLine() {
//        let arr = input.split(separator: " ").map { Int($0)! }
//        print(arr.min()!, arr.max()!)
//    }
//}
