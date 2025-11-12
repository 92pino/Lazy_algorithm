//
//  main.swift
//  Maximum Number of Vowels in a Substring of Given Length
//
//  Created by Twayair on 11/12/25.
//

import Foundation

let N = readLine()!
let K = Int(readLine()!)!

func maxVowels(_ s: String, _ k: Int) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    let chars = Array(s)
    var maxCount = 0
    
    var count = chars[0..<k].filter { vowels.contains($0) }.count
    maxCount = count

    for i in k..<chars.count {
        if vowels.contains(chars[i]) { count += 1}
        if vowels.contains(chars[i - k]) { count -= 1}
        maxCount = max(count, maxCount)
    }
    
    return maxCount
}

print(maxVowels("abciiidef", 3))
