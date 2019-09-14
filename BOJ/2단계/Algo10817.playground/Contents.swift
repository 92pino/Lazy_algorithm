import UIKit

/*:
 # 시험 성적 (#9498)
 
 ## 문제
 세 정수 A, B, C가 주어진다. 이때, 두 번째로 큰 정수를 출력하는 프로그램을 작성하시오.
 
 ## 입력
 첫째 줄에 세 정수 A, B, C가 공백으로 구분되어 주어진다. (1 ≤ A, B, C ≤ 100)
 
 ## 출력
 두 번째로 큰 정수를 출력한다.
 
 ## 예 1)
 ### input:
 20 30 10
 
 ### output:
 20
 
 ## 예 2)
 ### input:
 30 30 10
 
 ### output:
 30
 
 ## 예 3)
 ### input:
 40 40 40
 
 ### output:
 40
 */
let line = readLine() ?? ""
let numArr = line.split { $0 == " "}.compactMap { Int($0) }

print(numArr.sorted()[1])
