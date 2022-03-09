//
//  main.swift
//  BOJ-2798
//
//  Created by Jinbae Jeong on 2022/03/09.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let cardArray = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = 0

for i in cardArray {
    for j in cardArray {
        if i != j {
            for k in cardArray {
                if i != k && j != k {
                    let sum = i + j + k
                    
                    if sum <= M && sum >= result {
                        result = sum
                    }
                }
            }
        }
    }
}

print(result)
