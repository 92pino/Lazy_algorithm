//
//  main.swift
//  1207. Unique Number of Occurrences
//
//  Created by Twayair on 11/13/25.
//

import Foundation

//func uniqueOccurrences(_ arr: [Int]) -> Bool {
//    var dic: [Int: Int] = [:]
//    
//    for i in arr {
//        if let occurrences = dic[i] {
//            dic[i] = occurrences + 1
//        } else {
//            dic[i] = 1
//        }
//    }
//    
//    return dic.keys.count == Set(dic.values).count
//}

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    let counts = Dictionary(arr.map { ($0, 1)}, uniquingKeysWith: +)
    return counts.count == Set(counts.values).count
}

print(uniqueOccurrences([1,2,2,1,1,3]))
print(uniqueOccurrences([1,2]))
print(uniqueOccurrences([2,2]))
print(uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]))
