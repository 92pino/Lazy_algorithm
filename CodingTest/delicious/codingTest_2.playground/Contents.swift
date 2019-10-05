import UIKit

/*:
 # 문제
 
 앞뒤를 뒤집어도 똑같은 문자를 palindrome(팰린드롬)이라고 합니다. 예를 들어 12321은 팰린드롬이며, 21453은 팰린드롬이 아닙니다.
 
 자연수 n이 매개변수로 주어질 때, n이 팰린드롬이면 true를, 아니면 false를 반환하도록 함수 solution을 완성하세요
 
 ## 제한사항
 - n은 2^31 -1 보다 작거나 같은 자연수입니다.
 
 ## 입출력 예 1)
 N : 12321
 result : true
 
 ## 입출력 예 2)
 N : 21453
 result : false
 */

func solution(_ n: Int) -> Bool {
    var reversedNum = Int(String(String(n).reversed()))
    
    return n == reversedNum ? true : false
}
solution(21453)

// 1번째 풀어본 방식
func solution1(_ input: Int) -> Bool {
    var result = false
    
    if String(input) == String(String(input).reversed()) {
        result = true
    } else {
        false
    }
    
    return result
}
solution1(12321)
solution1(21453)

// 2번째 풀어본 방식 - 조건문을 삼항연산자로 변경

func solution2(_ input: Int) -> Bool {
    
    return String(input) == String(String(input).reversed()) ? true : false
}
solution2(12321)
solution2(21453)
