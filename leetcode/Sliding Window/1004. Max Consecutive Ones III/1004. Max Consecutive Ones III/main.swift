//
//  main.swift
//  1004. Max Consecutive Ones III
//
//  Created by Twayair on 11/12/25.
//

import Foundation
/**
 
 Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.

 Example 1:

 Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
 Output: 6
 Explanation: [1,1,1,0,0,1,1,1,1,1,1]
 Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
 Example 2:

 Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
 Output: 10
 Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
 Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.

 
 */

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })
let K = Int(readLine()!)!

func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var left = 0
    var zeroes = 0
    var maxNum = 0
    
    for right in 0..<nums.count {
        if nums[right] == 0 {
            zeroes += 1
        }
        
        while zeroes > k {
            if nums[left] == 0 {
                zeroes -= 1
            }
            
            left += 1
        }
        
        maxNum = max(maxNum, right - left + 1)
    }
    
    return maxNum
}

print(longestOnes(N, K))
