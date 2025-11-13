//
//  main.swift
//  1657. Determine if Two Strings Are Close
//
//  Created by Twayair on 11/13/25.
//

import Foundation

func closeStrings(_ word1: String, _ word2: String) -> Bool {
    guard word1.count == word2.count else { return false }
    
    var count1: [Character: Int] = [:]
    var count2: [Character: Int] = [:]
    
    for ch in word1 { count1[ch, default: 0] += 1 }
    for ch in word2 { count2[ch, default: 0] += 1 }
    
    if Set(count1.keys) != Set(count2.keys) {
        return false
    }
    
    let freq1 = count1.values.sorted()
    let freq2 = count2.values.sorted()
    
    return freq1 == freq2
}

print(closeStrings("abc", "bca"))
print(closeStrings("a", "aa"))
print(closeStrings("cabbba", "abbccc"))
print(closeStrings("cabbba", "aabbss"))
print(closeStrings("abbzzca", "babzzcz"))
