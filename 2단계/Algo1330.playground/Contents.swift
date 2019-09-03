import UIKit

/*:
 # 두 수 비교하기 (#1330)
 
 ## 문제
 두 정수 A와 B가 주어졌을 떄, A와 B를 비교하는 프로그램을 작성하시오
 
 ## 입력
 첫째 줄에 A와 B가 주어졌을 떄, A와 B를 비교하는 프로그램을 작성하시오.
 
 ## 출력
 첫째 줄에 다음 세 가지 중 하나를 출력한다.
 - A가 B보가 큰 경우에는 '>'를 출력한다.
 - A가 B보다 작은 경우에는 '<'를 출력한다.
 - A와 B가 같은 경우에는 '=='를 출력한다.
 
 ## 예 1)
 ### input:
 1 2
 ### output:
 <
 
 ## 예 2)
 ### input:
 10 2
 ### output:
 >
 
 ## 예 3)
 ### input:
 5 5
 ### output:
 ==
 */
// 백준 정답

let nums = (readLine() ?? "").split { $0 == " "}.compactMap { Int($0) }

if nums[0] > nums[1] {
    print(">")
} else if nums[0] < nums[1] {
    print("<")
} else {
    print("==")
}
