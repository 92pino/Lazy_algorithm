//
//  main.swift
//  BOJ-1463
//
//  Created by Jinbae Jeong on 2022/03/21.
//

import Foundation

var X = Int(readLine()!)!
var count = 0

while X > 1 {
    if X % 3 == 0 {
        X /= 3
    } else if X % 2 == 0 {
        X /= 2
    } else {
        X -= 1
    }
    count += 1
}

print(count)
