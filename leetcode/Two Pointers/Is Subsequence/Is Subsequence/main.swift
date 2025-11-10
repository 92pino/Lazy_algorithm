//
//  main.swift
//  Is Subsequence
//
//  Created by Twayair on 11/10/25.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sIndex = 0
    var jIndex = 0
    
    let sArr = Array(s)
    let tArr = Array(t)
    
    while sIndex < sArr.count && jIndex < tArr.count {
        if sArr[sIndex] == tArr[jIndex] {
            sIndex += 1
        }
        
        jIndex += 1
    }
    
    return sIndex == sArr.count
}

isSubsequence("bacaaaaa", "bbaaaa")
