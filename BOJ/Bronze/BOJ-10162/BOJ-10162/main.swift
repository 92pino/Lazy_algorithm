//
//  main.swift
//  BOJ-10162
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

var T = Int(readLine()!)!
var times = [300, 60, 10]
var counts = [Int]()

while T > 0 {
    times.forEach {
        counts.append(T/$0)
        T%=$0
        
        if T % times.last! < $0 {
            return
        }
    }
    break
}

print(T > 0 ? -1 : counts.map { String($0) }.joined(separator: " "))
