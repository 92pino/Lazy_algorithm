//
//  main.swift
//  BOJ-1316
//
//  Created by Jinbae Jeong on 2022/03/15.
//

import Foundation

let input = readLine()!
var count = 0
for _ in 0..<Int(input)! {
    let input1 = readLine()!
    var word: [Character] = []
    for i in input1 {
        if !word.contains(i) {
            word.append(i)
        } else if word.last != i {
            break
        } else {
            word.append(i)
        }
        
        if input1.count == word.count {
            count += 1
        }
    }
}

print(count)
