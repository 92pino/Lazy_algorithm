//
//  main.swift
//  BOJ-2562
//
//  Created by 정진배 on 2021/03/15.
//

import Foundation

var list: [Int] = []

for _ in 0..<9 {
    list.append(Int(readLine()!)!)
}

if let max = list.max(),
   let idx = (list.firstIndex(of: max)) {
    print(max, idx + 1)
}
