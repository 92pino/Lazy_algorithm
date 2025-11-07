//
//  main.swift
//  Greatest Common Divisor of Strings
//
//  Created by Twayair on 11/7/25.
//

import Foundation

/*
 
 1071. Greatest Common Divisor of Strings
 
 For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

  

 Example 1:

 Input: str1 = "ABCABC", str2 = "ABC"
 Output: "ABC"
 Example 2:

 Input: str1 = "ABABAB", str2 = "ABAB"
 Output: "AB"
 Example 3:

 Input: str1 = "LEET", str2 = "CODE"
 Output: ""
  

 Constraints:

 1 <= str1.length, str2.length <= 1000
 str1 and str2 consist of English uppercase letters.
  
 
 */

let L = readLine()!.split(separator: " ")

let str1 = String(L[0]), str2 = String(L[1])

func gcdOfString(_ str1: String, _ str2: String) {
    guard !str1.isEmpty, !str2.isEmpty else { return }

    let len1 = str1.count, len2 = str2.count    
    let gcdLen = gcd(len1, len2)
    
    print(String(str1.prefix(gcdLen)))
}

gcdOfString(str1, str2)

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
