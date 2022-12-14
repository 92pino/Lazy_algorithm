//
//  main.swift
//  BOJ-10816
//
//  Created by Jinbae Jeong on 2022/10/01.
//

import Foundation

let N = Int(readLine()!)!
var cardList = readLine()!.split(separator: " ").map { Int($0)! }
let M = Int(readLine()!)!

var result: [(Int, Int)] = []

