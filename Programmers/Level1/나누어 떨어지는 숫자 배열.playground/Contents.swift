import UIKit

/*:
 # 나누어 떨어지는 숫자 배열
 
 ## 문제
 array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
 divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요
 
 제한 조건
 - arr은 자연수를 담은 배열입니다.
 - 정수 i, j에 대해 i != j 이면 arr[i] != arr[j]입니다.
 - divisor는 자연수입니다.
 - array는 길이 1 이상인 배열입니다.
 
 ## 예 1)
 ### input:
 arr = [5, 9, 7, 10]
 divisor = 5
 ### output:
 [5, 10]
 
 ## 예 2)
 ### input:
 arr = [2, 36, 1, 3]
 divisor = 1
 ### output:
 [1, 2, 3, 36]
 
 ## 예 3)
 ### input:
 arr = [3, 2, 6]
 divisor = 10
 ### output:
 [-1]
 
 */

// 내 풀이
func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    var resultArr = arr.filter{ $0 % divisor == 0 }.sorted()
    
    if resultArr.count == 0 {
        resultArr.append(-1)
    }
    
    print(resultArr)
    
    return resultArr
}
solution([5,9,7,10], 5)

// 다른사람 풀이
func solutionA(_ arr: [Int], _ divisor: Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    
    return array == [] ? [-1] : array
}
solutionA([5,9,7,10], 5)
