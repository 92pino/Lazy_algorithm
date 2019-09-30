import UIKit

/*:
 # 문자열을 정수로 바꾸기
 
 ## 문제
 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
 예를들어 N = 123이면 1 + 2 + 3 = 6을 return하면 됩니다.
 
 제한 조건
 - N의 범위 : 100,000,000 이하의 자연수
 
 ## 예 1)
 ### input:
 123
 ### output:
 6
 
 ## 예 2)
 ### input:
 987
 ### output:
 24
 
*/

func solution(_ n: Int) -> Int {
    
    let num = String(n).compactMap { $0.wholeNumberValue }
    print(num)
    
    return num.reduce(0, +)
    
}
solution(123)
