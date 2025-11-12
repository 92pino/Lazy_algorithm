//
//  main.swift
//  Max Number of K-Sum Pairs
//
//  Created by Twayair on 11/12/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })
let K = Int(readLine()!)!

func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var sortNums = nums.sorted()
    var sIndex = 0
    var rIndex = nums.count - 1
    var total = 0
    
    while sIndex < rIndex {
        var sum = sortNums[sIndex] + sortNums[rIndex]
        
        if sum == k {
            total += 1
            sIndex += 1
            rIndex -= 1
        } else if sum > k {
            rIndex -= 1
        } else {
            sIndex += 1
        }
    }
    
    return total
}

print(maxOperations(N, K))
