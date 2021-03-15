//
//  main.swift
//  BOJ-8958
//
//  Created by 정진배 on 2021/03/16.
//

import Foundation

let input = Int(readLine()!)!
var result = [Int]()

for _ in 0..<input {
    let quiz = readLine()!.compactMap { $0 }

    var count = [Int](repeating: 0, count: quiz.count)

    for j in 0..<quiz.count {
        if quiz[0] == "O" {
            count[0] = 1
        }

        if j > 0 {
            if quiz[j] == "O" {
                count[j] = count[j - 1] + 1
            }
        }
    }

    result.append(count.reduce(0, +))
}

for i in result {
    print(i)
}

print("================== 다른 풀이방식 참고 ==================")
let n: Int! = Int(readLine()!)

for _ in 0..<n {
    let input = readLine()!
    var point = 1
    var answer = 0

    input.forEach {
        if $0 == "O" {
            answer += point
            point += 1
        } else {
            point = 1
        }
    }

    print(answer)
}
