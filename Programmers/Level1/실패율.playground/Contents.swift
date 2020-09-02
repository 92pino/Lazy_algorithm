import Cocoa

// 시간초과가 난다... 왜지....
// https://zeddios.tistory.com/648 에 보면 sort가 문제가 되는듯??
func solution01(_ N: Int, _ stages: [Int]) -> [Int] {
  var failureRate: [Double] = []
  var stageCount: Int = stages.count  // 8
  for i in 1...N {
    // 여기서도 문제가 날수 있을 듯?
    let currentCount = stages.filter { $0 == i }.count
    failureRate.append(Double(currentCount) / Double(stageCount))
    
    // 스테이지에 도달한 플레이어 수
    stageCount -= currentCount
  }
  
  return failureRate.enumerated().sorted { $1.element < $0.element }.map { $0.offset+1 }
}

func solution02(_ N: Int, _ stages: [Int]) -> [Int] {
  var failureRate: [(count: Int, failRate: Double)] = .init(repeating: (0, 0), count: N)
  
  // 각 단계 별 머무르고 있는 인원 카운트
  for i in  0..<stages.count {
    let idx = stages[i] - 1
    if (idx < 5) {
      failureRate[idx].count += 1
    }
  }
  
  // 단계 별 실패율 계산
  var stageCount: Int = stages.count
  for i in 0..<failureRate.count {
    let failCount: Int = failureRate[i].count
    failureRate[i].failRate = failCount > 0 ? Double(failCount) / Double(stageCount) : 0
    stageCount -= failCount
  }
  
  return failureRate.enumerated().sorted { $0.element.failRate > $1.element.failRate }.map { $0.offset + 1 }
}

solution01(5, [2, 1, 2, 6, 2, 4, 3, 3])
solution02(5, [2, 1, 2, 6, 2, 4, 3, 3])
