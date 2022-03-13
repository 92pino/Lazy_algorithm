//
//  main.swift
//  BOJ-10610
//
//  Created by Jinbae Jeong on 2022/03/14.
//

import Foundation

let N = readLine()!.map { Int(String($0))! }.sorted(by: >)
if N[N.count - 1] == 0 && N.reduce(0, +) % 3 == 0 {
    print(Array(N).map { String($0) }.joined(separator: ""))
} else {
    print(-1)
}
