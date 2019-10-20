import UIKit

/*:
 # 약수의 합
 
 ## 문제
 자연수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
 
 제한 조건
 - n은 0 이상 3000이하인 자연수입니다.
 
 ## 예 1)
 ### input:
 n = 12
 ### output:
 28
 
 ## 예 2)
 ### input:
 n = 5
 ### output:
 6
 
*/

// 내 풀이
func solution(_ n: Int) -> Int {
    var divisor = [Int]()
    
    if n == 0 {
        return 0
    }
    
    for i in 1...n {
        if n % i == 0 {
            divisor.append(i)
        }
    }
    
    return divisor.reduce(0, +)
}

solution(5)
solution(12)

// 다른 사람 풀이
func solutionA(_ n: Int) -> Int {
    var result = 0
    
    for i in 1..<n+1 {
        if n % i == 0 {
            result = result + i
        }
    }
    
    return result
}
solutionA(5)
