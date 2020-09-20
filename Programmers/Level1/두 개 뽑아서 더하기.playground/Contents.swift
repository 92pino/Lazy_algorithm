import UIKit

func solution(_ numbers: [Int]) -> [Int] {
  // 기존
  // var arr: [Int] = []
  
  // Set으로 초기 세팅해도 괜찮을듯
  var arr: Set<Int> = []
  for i in 0..<numbers.count {
    for j in 0..<numbers.count {
      if i == j {
        continue
      }
      arr.insert(numbers[i] + numbers[j])
    }
  }
  return arr.sorted()
}

solution([2,1,3,4,1])
