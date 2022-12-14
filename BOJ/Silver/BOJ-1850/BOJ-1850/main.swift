//
//  main.swift
//  BOJ-1850
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }, A = input[0], B = input[1]
func gcd(a: Int, b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        return gcd(a: b, b: a % b)
    }
}
print(String(repeating: "1", count: gcd(a: A, b: B)))
