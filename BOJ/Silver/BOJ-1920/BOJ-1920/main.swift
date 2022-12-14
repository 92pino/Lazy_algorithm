//
//  main.swift
//  BOJ-1920
//
//  Created by Jinbae Jeong on 2022/03/21.
//

import Foundation

let n = readLine()!
let setA = Set(readLine()!.split(separator: " "))
let m = readLine()!
let setM = readLine()!.split(separator: " ")

for i in setM {
    if setA.contains(i) {
        print(1)
    } else {
        print(0)
    }
}
