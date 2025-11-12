//
//  main.swift
//  724. Find Pivot Index
//
//  Created by Twayair on 11/13/25.
//

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
    var sumLeft = 0
    var sumRight = nums.reduce(0, +)
    
    for i in 0..<nums.count {
        sumRight -= nums[i]
        
        if sumLeft == sumRight {
            return i
        }
        
        sumLeft += nums[i]
    }
    
    return -1
}

print(pivotIndex([1,7,3,6,5,6]))
print(pivotIndex([1,2,3]))
print(pivotIndex([2,1,-1]))
print(pivotIndex([0,0]))
