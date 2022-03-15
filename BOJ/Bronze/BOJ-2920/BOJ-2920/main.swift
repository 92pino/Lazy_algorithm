//
//  main.swift
//  BOJ-2920
//
//  Created by Jinbae Jeong on 2022/03/16.
//

import Foundation

let c = [1, 2, 3, 4, 5, 6, 7, 8]
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
if c == input {
    print("ascending")
} else if c.sorted(by: >) == input  {
    print("descending")
} else {
    print("mixed")
}
