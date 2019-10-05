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
