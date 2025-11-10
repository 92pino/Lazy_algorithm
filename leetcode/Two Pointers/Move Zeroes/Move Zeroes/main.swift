//
//  main.swift
//  Move Zeroes
//
//  Created by Twayair on 11/10/25.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var index = 0
    
    for i in nums {
        if i == 0 {
            nums.append(nums.remove(at: index))
        } else {
            index += 1
        }
    }
}

var N = Array(readLine()!.split(separator: ",").map { Int($0)! })
moveZeroes(&N)

print(N)
