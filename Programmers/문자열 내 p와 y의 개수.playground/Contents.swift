import UIKit

/*:
 # 문자열 내 p와 y의 개수
 
 ## 문제
 대문자와 소문자가 섞여있는 문자열 s가 주어집니다. s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.
 
 예를 들어 s가 pPoooyY면 true를 return하고 Pyy라면 false를 return합니다.
 
 제한 조건
 - 문자열 s의 길이 : 50 이하의 자연수
 - 문자열 s는 알파벳으로만 이루어져 있습니다.
 
 ## 예 1)
 ### input:
 "pPoooyY"
 ### output:
 true
 
 ## 예 2)
 ### input:
 "Pyy"
 ### output:
 false
 
 */

// 내 풀이
func solution(_ s: String) -> Bool {
    var ans: Bool = false
    
    var str = s.lowercased()
    
    var pCount = 0
    var yCount = 0
    
    for i in str {
        if i == "p" {
            pCount += 1
        } else if i == "y" {
            yCount += 1
        }
    }
    
    if pCount == yCount {
        ans = true
    } else {
        ans = false
    }
    
    return ans
}

solution("pPoooyY")

// 참고할만한 다른사람 풀이
func solution2(_ s: String) -> Bool {
    let string = s.lowercased()
    
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

solution2("pPoooyY")
