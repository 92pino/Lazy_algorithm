//
//  main.swift
//  BOJ-11653
//
//  Created by Jinbae Jeong on 2022/03/07.
//

import Foundation

var N = Int(readLine()!)!
var i = 2

while true {
    if N % i != 0 {
        i += 1
    } else {
        print(i)
        N /= i
        if N == 1 {
            break
        }
    }
}
