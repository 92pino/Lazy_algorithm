//
//  main.swift
//  Merge Strings Alternately
//
//  Created by Twayair on 11/7/25.
//

import Foundation

let L = readLine()!.split(separator: " ")
let word1 = Array(L[0]), word2 = Array(L[1])

var result = ""
let maxLength = max(word1.count, word2.count)

for i in 0..<maxLength {
    if i < word1.count {
        result += String(word1[i])
    }
    
    if i < word2.count {
        result += String(word2[i])
    }
}

print(result)
