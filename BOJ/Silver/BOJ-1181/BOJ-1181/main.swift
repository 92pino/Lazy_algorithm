//
//  main.swift
//  BOJ-1181
//
//  Created by Jinbae Jeong on 2022/03/05.
//

import Foundation

// 내 풀이

let N = Int(readLine()!)!
var arr: Set<String> = []
for _ in 0..<N {
    let input = readLine()!
    arr.insert(input)
}

let sorted = arr.sorted { first, second in
    if first.count == second.count {
        return first < second
    } else {
        return first.count < second.count
    }
}

sorted.forEach {
    print($0)
}

// 다른사람 풀이
var list = Set<String>()

for _ in 0..<Int(readLine()!)! {
    list.insert(readLine()!)
}

var tuples = [(Int, String)]()
for word in list {
    tuples.append((word.count, word))
}
tuples.sort(by: <)
tuples.forEach {
    print($0.1)
}
