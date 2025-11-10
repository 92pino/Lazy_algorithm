//
//  main.swift
//  Container With Most Water
//
//  Created by Twayair on 11/10/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { Int($0)! })
/**
 
 첫번째 해결법 - result: 틀림
func maxArea(_ height: [Int]) -> Int {
    var index = 0
    var sum = 0
    
    if height.count == 1 {
        return 1
    }
    
    while index < height.count {
        for i in 1..<height.count where index != i {
            let width = abs(i - index)
            let height = min(height[i], height[index])
            
            if width * height > sum {
                sum = width * height
            }
        }
        
        index += 1
    }
    
    return sum
}
 */


func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    
    var sum = 0
    
    while left < right {
        let width = abs(right - left)
        let currentHeight = min(height[left], height[right])
        
        sum = max(sum, width * currentHeight)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return sum
}

maxArea(N)
