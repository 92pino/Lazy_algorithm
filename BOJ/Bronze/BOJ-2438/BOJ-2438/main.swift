//
//  main.swift
//  BOJ-2438
//
//  Created by Jinbae Jeong on 2022/04/18.
//

import Foundation

if let num = Int(readLine()!) {
    for i in 1...num {
        var result = ""
        for j in 1...num {
            if result.count > i - 1 {
                break
            }
            result += "*"
        }
        print(result)
    }
}
