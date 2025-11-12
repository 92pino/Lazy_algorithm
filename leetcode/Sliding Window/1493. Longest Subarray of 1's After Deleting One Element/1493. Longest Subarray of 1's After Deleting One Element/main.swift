//
//  main.swift
//  1493. Longest Subarray of 1's After Deleting One Element
//
//  Created by Twayair on 11/12/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })

func longestSubarray(_ nums: [Int]) -> Int {
    var left = 0
    var zeroCount = 0
    var maxLen = 0
        
    for right in 0..<nums.count {
        if nums[right] == 0 {
            zeroCount += 1
        }
        
        while zeroCount > 1 {
            if nums[left] == 0 {
                zeroCount -= 1
            }
            
            left += 1
        }
        
        maxLen = max(maxLen, right - left)
    }
    
    return maxLen
}

print(longestSubarray([1,1,0,1]))
print(longestSubarray([0,1,1,1,0,1,1,0,1]))
print(longestSubarray([1,1,1]))
print(longestSubarray([0,0,0]))
print(longestSubarray([1,0,0,0,0]))
