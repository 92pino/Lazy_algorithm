//
//  main.swift
//  BOJ-1193
//
//  Created by Jinbae Jeong on 2022/03/06.
//

import Foundation

// 내풀이
var X = Int(readLine()!)!
//var sum = 0
//var count = 1
//var arr: [String] = []
//
//var isOdd: Bool {
//    return count % 2 == 0
//}
//
//for i in 1...X {
//    sum += i
//    count += 1
//    if sum >= X {
//        break
//    }
//}
//
//if isOdd {
//    for j in 1..<count {
//        arr.append("\(count - j)/\(j)")
//    }
//} else {
//    for j in 1..<count {
//        arr.append("\(j)/\(count - j)")
//    }
//}
//
//var idx = arr.count - (sum - X) - 1
//
//print(arr[idx])

// 다른사람 풀이

var i = 1

while X > i {
    print("@@@@@@1 : ", X, i)
    X -= i
    i += 1
    print("@@@@@@2 : ", X, i)
}

if i % 2 == 1 {
    print("\(i - X + 1)/\(X)")
} else {
    print("\(X)/\(i - X + 1)")
}
