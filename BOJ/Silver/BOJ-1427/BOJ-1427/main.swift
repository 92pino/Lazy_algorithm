//
//  main.swift
//  BOJ-1427
//
//  Created by Jinbae Jeong on 2022/03/05.
//

import Foundation

/**
 
 ![BOJ-1427](./image.png)
 */

// 내 풀이
print(String(readLine()!.sorted(by: >)))

// 다른사람 풀이
let input = readLine()!
var num = [String]()

for i in input {
    num.append(String(i))
}

num = [num.sorted(by: >).reduce("", +)]
print(num[0])
