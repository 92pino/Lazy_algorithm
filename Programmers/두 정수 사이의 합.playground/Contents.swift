import UIKit

/*:
 # 두 정수 사이의 합
 
 ## 문제
 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
 예를 들어 a = 3, b = 5인 경우, 3+4+5 = 12이므로 12를 리턴합니다.
 
 제한 조건
 - a와 b가 같은 경우는 둘 중 아무 수나 리턴하세요.
 - a와 b는 -10,000,000 이상 10,000,000 이하인 정수입니다.
 - a와 b의 대소관계는 정해져있지 않습니다.
 
 ## 예 1)
 ### input:
 a : 3, b : 5
 ### output:
 12
 
 ## 예 2)
 ### input:
 a : 3, b: 3
 ### output:
 3
 
 ## 예 3)
 ### input:
 a : 5, b : 3
 ### output:
 12
 
 */

// 내 풀이
func solution(_ a: Int, _ b: Int) -> Int64 {
    var sum = 0

    if a < b {
        for i in a...b {
            sum += i
        }
    } else if a == b {
        sum = a
    } else {
        for i in b...a {
            sum += i
        }
    }
    
    return Int64(sum)
}

solution(5, 3)


// 다른사람 풀이
func solution2(_ a: Int, _ b: Int) -> Int64 {
    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}
solution2(3, 5)
