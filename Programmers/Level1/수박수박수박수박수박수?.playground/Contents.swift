import UIKit

func solution(_ n: Int) -> String {
  var answer = ""
  for i in 0..<n {
    if i % 2 == 0 {
      answer.append("수")
    } else {
      answer.append("박")
    }
  }
  
  print(answer)
  return answer
}

func solution2(_ n: Int) -> String {
  return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}

func solution3(_ n: Int) -> String {
  return (0..<n).map{($0 % 2 == 0 ? "수" : "박")}.reduce("", +)
}

solution(4)
solution2(4)
solution3(4)
