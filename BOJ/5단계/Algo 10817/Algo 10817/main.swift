//
//  main.swift
//  Algo 10817
//
//  Created by JinBae Jeong on 2020/04/05.
//  Copyright © 2020 pino. All rights reserved.
//

import Foundation

/*:
 # 세 수 (#10817)
 
 ## 문제
 세 정수 A, B, C가 주어진다. 이때, 두 번째로 큰 정수를 출력하는 프로그램을 작성하시오.
 
 ## 예)
 ### input:
 첫째 줄에 세 정수 A, B, C가 공백으로 구분되어 주어진다. (1 ≤ A, B, C ≤ 100)
 
 7 3
 ### output:
 두 번째로 큰 정수를 출력한다.

*/

let numArr = readLine()!.split { $0 == " "}.compactMap { Int($0) }

print(numArr.sorted(by: >)[1])
