//
//  main.swift
//  Product of Array Except Self
//
//  Created by Twayair on 11/7/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })

func productExceptSelf(_ nums: [Int]) -> [Int] {
    let zeroCount = nums.filter { $0 == 0 }.count
    
    if zeroCount > 1 {
        return Array(repeating: 0, count: nums.count)
    }
    
    let totalProduct = nums.filter { $0 != 0 }.reduce(1, *)
    
    return nums.map {
        if zeroCount == 1 {
            return $0 == 0 ? totalProduct : 0
        } else {
            return totalProduct / $0
        }
    }
}

print(productExceptSelf(N))
