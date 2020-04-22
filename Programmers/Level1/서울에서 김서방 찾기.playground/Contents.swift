import UIKit

func solution(_ seoul: [String]) -> String {
  return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}

func solution1(_ seoul: [String]) -> String {
  for _ in 0..<seoul.count {
    let idx = seoul.firstIndex(of: "Kim")!
    
    return "김서방은 \(Int(idx))에 있다"
  }
  return ""
}


solution(["Jane", "Kim"])
solution1(["Jane", "Kim"])
