//
//  main.swift
//  Increasing Triplet Subsequence
//
//  Created by Twayair on 11/10/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })

func increasingTriplet(_ nums: [Int]) -> Bool {
    var a = Int.max
    var b = Int.max
    
    for num in nums {
        if num < a {
            a = num
        } else if num < b && a < b {
            b = num
        } else if b < num {
            return true
        }
    }
    
    return false
}

print(increasingTriplet(N))
