//
//  main.swift
//  BOJ-10250
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let H = input[0], _ = input[1], N = input[2]
    
    let floor = N % H
    let L = N / H
    
    if floor == 0 {
        if L >= 10 {
            print("\(H)\(L)")
        } else {
            print("\(H)0\(L)")
        }
    } else {
        if L + 1 >= 10 {
            print("\(floor)\(L+1)")
        } else {
            print("\(floor)0\(L+1)")
        }
    }
}
