//
//  main.swift
//  BOJ-10814
//
//  Created by Jinbae Jeong on 2022/10/01.
//

import Foundation

struct User {
    var age: Int
    var name: String
    var order: Int
}

let N = Int(readLine()!)!
var arr: [User] = []

for i in 0..<N {
    let user = readLine()!.split(separator: " ").map { String($0) }
    arr.append(.init(age: Int(user[0])!, name: user[1], order: i))
}
arr.sort {
    $0.age == $1.age ? $0.order < $1.order : $0.age < $1.age
}
arr.forEach {
    print("\($0.age) \($0.name)")
}
