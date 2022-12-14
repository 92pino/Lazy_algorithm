//
//  main.swift
//  BOJ-1929
//
//  Created by Jinbae Jeong on 2022/03/07.
//

import Foundation

var A = [1, 3, 6, 4, 1, 2]
A = [1, 2, 3]
var num = 1

while A.filter({ number in number == num}).count > 0 {
    num += 1
}
print(num)
