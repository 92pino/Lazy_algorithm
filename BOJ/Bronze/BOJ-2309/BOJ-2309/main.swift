//
//  main.swift
//  BOJ-2309
//
//  Created by Jinbae Jeong on 2022/10/01.
//

import Foundation

var arr = [Int]()
var fakeArr = [Int]()
var newArr = [Int]()

for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

var fakeHeight = arr.reduce(0, +) - 100
mainLoop: for i in 0..<arr.count {
    for j in 1..<arr.count {
        let sum = arr[i] + arr[j]
        if sum == fakeHeight {
            fakeArr.append(arr[i])
            fakeArr.append(arr[j])
            break mainLoop
        }
    }
}

newArr = Array(Set(arr).subtracting(Set(fakeArr)))

newArr.sort()
newArr.forEach { print($0) }
