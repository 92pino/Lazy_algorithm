//
//  main.swift
//  Maximum Average Subarray I
//
//  Created by Twayair on 11/12/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })
let K = Int(readLine()!)!

/// 내 정답

/*
 func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var reverage = Double(Int.min)
    
    if nums.count == 1 || k == 1 {
        return Double(nums.max()!)
    }
    
    for i in 0...nums.count - k {
        let r = Double(nums[i..<i+k].reduce(0, +)) / Double(k)
        reverage = max(reverage, r)
    }
    
    return reverage
}
 */

/// 개선안
func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var sum = nums.prefix(k).reduce(0, +), maxSum = 0
    maxSum = sum
    for i in k..<nums.count {
        print(i, k)
        sum += nums[i] - nums[i - k]
        maxSum = max(maxSum, sum)
    }
    return Double(maxSum) / Double(k)
}
print(findMaxAverage(N, K))
