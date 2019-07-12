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

func returnN(_ num: Int) {
    for number in 1...num {
        print(number)
    }
}

returnN(5)
