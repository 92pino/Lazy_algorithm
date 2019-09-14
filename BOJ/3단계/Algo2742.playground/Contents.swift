import UIKit

/*:
 # 기찍 N (#2742)
 ## 문제
 자연수 N이 주어졌을 때, N부터 1까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input:
 5
 ### output:
 5 4 3 2 1
*/

// 기존 코드

func returnN(_ num: Int) {
    for number in (1...num).reversed() {
        print(number)
    }
}

returnN(5)

// 정답으로 표시된 코드

let line = readLine() ?? ""
let a = Int(line) ?? 0
for index in (1...a).reversed() {
    print(index)
}
