import UIKit

/*:
 # 다음 큰 숫자
 
 ## 문제
 자연수 n이 주어졌을 떄, n의 다음 큰 숫자는 다음과 같이 정의 합니다.
 
 - 조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
 - 조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
 - 조건 3. n의 다음 큰 숫자는 조건 1,2 를 만족하는 가장 작은 수 입니다.
 
 예를 들어서 78(1001110)의 다음 큰 숫자는 83(1010011)입니다.
 자연수 n이 매개변수로 주어질 때, n의 다음 큰 숫자를 return하는 solution 함수를 완성해주세요.
 
 제한 조건
 - n은 1,000,000 이하의 자연수 입니다.
 
 ## 예 1)
 ### input:
 n | result
 
 78    83
 
 15    23
 
 */
func solution(_ n: Int) -> Int {
    var nonzeroCount = n.nonzeroBitCount
    var highNum = n + 1
    
    print(nonzeroCount)
    
    while highNum.nonzeroBitCount != nonzeroCount {
        highNum += 1
    }
    
    return highNum
}
solution(78)

// 다른 사람 풀이
func solutionA(_ n: Int) -> Int {
    return String(n, radix:2).map({ Int(String($0))!}).reduce(0, +)
}
solutionA(78)
