import UIKit

/*:
 # 2016년
 
 ## 문제
 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두 글자를 반환하면 됩니다.
 
 제한 조건
 - s는 길이가 1 이상, 100이하인 스트링입니다.
 
 ## 예 1)
 ### input:
 s : "abcde"
 ### output:
 "c"
 
*/

func solution(_ s: String) -> String {
    if s.count % 2 == 0 {
        print(String(Array(s)[s.count / 2 - 1 ... s.count / 2 ]))
        return String(Array(s)[s.count / 2 - 1...s.count/2])
    } else {
        return String(Array(s)[s.count / 2])
    }
}
solution("abcde")
solution("abcd")
