//
//  main.swift
//  BOJ-1764
//
//  Created by Jinbae Jeong on 2022/10/03.
//

import Foundation

let R = readLine()!.split(separator: " ").map { Int($0)! }
let N = R[0], M = R[1]

var s1 = Set<String>()
var s2 = Set<String>()

for _ in 0..<N {
    s1.insert(readLine()!)
}

for _ in 0..<M {
    s2.insert(readLine()!)
}

var result = s1.intersection(s2)
print(result.count)

result.sorted().forEach {
    print($0)
}
