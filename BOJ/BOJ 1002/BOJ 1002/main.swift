//
//  main.swift
//  BOJ 1002
//
//  Created by JinBae Jeong on 2020/09/19.
//  Copyright © 2020 pino. All rights reserved.
//

import Foundation

let TEST_CASE = Int(readLine()!)!

for _ in 1...TEST_CASE {
  let input = (readLine()?.split(separator: " ").map{ Int($0)!})!
  let (x1, y1) = (input[0], input[1])
  let (x2, y2) = (input[3], input[4])
  let r1 = input[2], r2 = input[5]
  
  if (x1 == x2) && (y1 == y2) {
    if r1 == r2 {
      // 겹치는 경우
      print(-1)
      continue
    } else {
      print(0)
      continue
    }
  }
}
