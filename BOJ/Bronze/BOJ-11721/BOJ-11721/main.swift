//
//  main.swift
//  BOJ-11721
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

let input = Array(readLine()!)
var str: [String] = []
for (index, s) in input.enumerated() {
    if index != 0 && index % 10 == 0 {
        str.append("\n")
        str.append(String(s))
    } else {
        str.append(String(s))
    }
}
print(str.joined(separator: ""))

