//
//  main.swift
//  BOJ-5597
//
//  Created by Jinbae Jeong on 2022/11/17.
//

import Foundation

var arr = Array(1...30)
for _ in 0..<28 {
    if let index = arr.firstIndex(of: Int(readLine()!)!) {
        arr.remove(at: index)
    }
}
arr.forEach {
    print($0)
}
