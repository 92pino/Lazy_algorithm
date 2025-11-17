//
//  main.swift
//  394. Decode String
//
//  Created by Twayair on 11/17/25.
//

import Foundation

func decodeString(_ s: String) -> String {
    var countStack: [Int] = []
    var stringStack: [String] = []
    var currentString = ""
    var currentNum = 0
    
    for ch in s {
        if let digit = ch.wholeNumberValue {
            currentNum = 10 * currentNum + digit
        } else if ch == "[" {
            countStack.append(currentNum)
            stringStack.append(currentString)
            
            currentNum = 0
            currentString = ""
        } else if ch == "]" {
            let repeatCount = countStack.removeLast()
            let prevString = stringStack.removeLast()
            
            currentString = prevString + String(repeating: currentString, count: repeatCount)
        } else {
            currentString.append(ch)
        }
    }
    
    return currentString
}


print(decodeString("3[a2[c]]"))
