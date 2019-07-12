import UIKit

/*
 # 별찍기 - 2 (#2439)
 ## 문제
 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
 하지만, 오른쪽을 기준으로 정렬한 별 (예제 참고)을 출력하시오.
 
 ## 예
 ### input:
 5
 
 ### output:
     *
    **
   ***
  ****
 *****
*/


func printStar(_ floor: Int) {
    var blankString = ""
    var starString = "*"
    
    for i in (1...floor).reversed() {
        for _ in 1...i {
            blankString += " "
        }
        print(blankString + starString)
        starString += "*"
        blankString = ""
    }
}
printStar(5)
