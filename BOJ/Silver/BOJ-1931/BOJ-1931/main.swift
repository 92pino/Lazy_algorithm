//
//  main.swift
//  BOJ-1931
//
//  Created by Jinbae Jeong on 2022/03/13.
//

import Foundation

let N = Int(readLine()!)!
var conference: [(Int, Int)] = []
var now = -1
var answer = 0

for _ in 0..<N {
    let room = readLine()!.split(separator: " ").map { Int(String($0))! }
    conference.append((room[0], room[1]))
}

conference.sort(by: { $0.0 < $1.0 })
conference.sort(by: { $0.1 < $1.1 })

for i in conference {
    if i.0 >= now {
        now = i.1
        answer += 1
    }
}

print(answer)
