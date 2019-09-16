import UIKit

/*:
 # 합 (#8393)
 
 ## 문제
 n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.
 
 ## 입력
 첫째 줄에 n (1 ≤ n ≤ 10,000)이 주어진다.
 
 ## 출력
 1부터 n까지 합을 출력한다.
 
 ## 예 1)
 ### input:
 3
 ### output:
 6
 
 */


// 내 코드
let line = readLine() ?? ""
let num = Int(line) ?? 0

var sum = 0

for i in 1...sum {
    sum = sum + i
}

print(sum)

// 다른 코드

let line = readLine() ?? ""
let num = Int(line) ?? 0

print(Array(1...num).reduce(0, +))
