//
//  main.swift
//  BOJ-10817
//
//  Created by Jinbae Jeong on 2022/03/15.
//

import Foundation

print(readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)[1])
