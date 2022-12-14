//
//  main.swift
//  BOJ-11866
//
//  Created by Jinbae Jeong on 2022/03/17.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]
var arr = Array(1...7)

var queue = [Int]()

while queue.count != N {
    for i in 0..<arr.count {
        if (i + 1) % 3 == 0 {
            arr.removeFirst()
            queue.append(arr[i])
            break
        } else {
            if arr.count < 2 {
                arr.forEach {
                    queue.append($0)
                }
                arr.removeAll()
                break
            }
            arr.removeFirst()
            arr.append(i)
        }
    }
}
print("<\(queue.map { String($0) }.joined(separator: ","))>")
/*
 
 1 2 4 5 7 4
 
 */
