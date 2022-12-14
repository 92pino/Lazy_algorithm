import UIKit

/*:
 # 막대기 (#1094)
 
 ## 문제
 지민이는 길이가 64cm인 막대를 가지고 있다. 어느 날, 그는 길이가 Xcm인 막대가 가지고 싶어졌다. 지민이는 원래 가지고 있던 막대를 더 작은 막대로 자른다음에, 풀로 붙여서 길이가 Xcm인 막대를 만들려고 한다.
 
 막대를 자르는 가장 쉬운 방법은 절반으로 자르는 것이다. 지민이는 아래와 같은 과정을 거쳐서 막대를 자르려고 한다.
 
 1. 지민이가 가지고 있는 막대의 길이를 모두 더한다. 처음에는 64cm 막대 하나만 가지고 있다. 이때, 합이 X보다 크다면, 아래와 같은 과정을 반복한다.
    1. 가지고 있는 막대 중 길이가 가장 짧은 것을 절반으로 자른다.
    2. 만약, 위에서 자른 막대의 절반 중 하나를 버리고 남아있는 막대의 길이의 합이 X보다 크거나 같다면, 위에서 자른 막대의 절반 중 하나를 버린다.
 2. 이제, 남아있는 모든 막대를 풀로 붙여서 Xcm를 만든다.
 
 X가 주어졌을 때, 위의 과정을 거친다면, 몇 개의 막대를 풀로 붙여서 Xcm를 만들 수 있는지 구하는 프로그램을 작성하시오.
 
 ## 예 1)
 ### input:
 23
 ### output:
 4
 
 ## 예 2)
 ### input:
 32
 ### output:
 1
 
 ## 예 3)
 ### input:
 64
 ### output:
 1
 
 ## 예 4)
 ### input:
 48
 ### output:
 2
 */

// 기존 코드

var temp: [Int] = [48]
let inputN = Int(readLine() ?? "") ?? 0
while inputN < temp.reduce(0, +) {
    temp = temp.sorted()
    let min = temp.removeFirst()
    
    if temp.reduce(0, +) + min / 2 >= inputN {
        temp.append(min / 2)
    } else {
        temp.append(min / 2)
    }
}

print(temp.count)

// 정답으로 표시된 코드


let a: [String: Int] = ["1": 1, "2": 2, "3": 3]
print(a.enumerated)
