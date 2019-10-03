import UIKit

/*:
 # 문제
 
 임의의 자연수 N이 주어질 때 각 자리의 숫자를 정렬하려고 합니다. 예를 들어 주어진 숫자 N = 2613인 경우 각 자릿수를 오름차순으로 정렬하면 1236이 되며, 내림차순으로 정렬하면 6321이 되고, 두 숫자의 합은 7557이 됩니다. 임의의 자연수 N이 매개변수로 주어질 때 N의 각 자릿수를 오름차순으로 정렬한 수와 내림차순으로 정렬한 수의 합을 return 하도록 solution 함수를 완성해주세요.
 
 ## 제한사항
 - N은 1이상 10억 이하의 자연수입니다.
 
 ## 입출력 예 1)
    N : 2613
    result : 7557
 
 ## 입출력 예 2)
    N : 33285
    result : 108690
*/

// 1번째 출어본 결과
func solution1(input number: Int) -> Int {
    let ascendingArr = String(number).sorted(by: <)
    var ascendingNum = ""
    
    for i in ascendingArr {
        ascendingNum += String(i)
    }
    
    let descendingArr = String(number).sorted(by: >)
    var descendingNum = ""
    
    for i in descendingArr {
        descendingNum += String(i)
    }
    
    return Int(ascendingNum)! + Int(descendingNum)!
}
solution1(input: 2613)

// 2번째 풀어본 결과

func solution2(input number: Int) -> Int {
    var n1 = Int(String(String(number).sorted(by: <).reversed()))!
    var n2 = Int(String(String(number).sorted(by: >).reversed()))!
    
    return n1 + n2
}

solution2(input: 2613)
