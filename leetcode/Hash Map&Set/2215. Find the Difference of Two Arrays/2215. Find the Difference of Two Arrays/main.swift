//
//  main.swift
//  2215. Find the Difference of Two Arrays
//
//  Created by Twayair on 11/13/25.
//

import Foundation

func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    return [Array(Set(nums1).subtracting(nums2)), Array(Set(nums2).subtracting(nums1))]
}

print(findDifference([1,2,3], [2,4,6]))
print(findDifference([1,2,3,3], [1,1,2,2]))
