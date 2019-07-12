import UIKit

/*:
 # N 찍기 (#2741)
 
 ## 문제
 자연수 N이 주어졌을 때, 1부터 N까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
 
 ## 예
 ### input:
 5
 
 ### output:
 1
 2
 3
 4
 5
 */

// 기존 코드

// 실제 console 상으로는 한줄에 num 한개씩 배출이 되는것처럼 보이나 실제로는 그렇지 않은듯하다?
// 원인은 잘 모르겠지만 정답 코드와 비교했을때 readLine()라는 친구를 눈여겨봐야될듯하다

//func returnN(_ num: Int) {
//    for number in 1...num {
//        print(number)
//    }
//}
//
//returnN(5)

// 정답으로 표시된 코드

let line = readLine() ?? ""
let a = Int(line) ?? 0
for index in 1...a {
    print(index)
}
