import Cocoa

// 이해를 잘못했었음
// [5,4,3,2,1] 중 제일 작은수를 제거하기위해 sorting하고 그대로 return했는데
// 문제에서는 기본 배열 그대로에서 제일 작은수만 제거한 상태로 Return 해야된다.
// ex) [1,5,2,4,3] ==> [5,2,4,3]으로

func solution(_ arr: [Int]) -> [Int] {
  var result = arr
  guard let min = arr.min() else { return [] }
  let idx = arr.firstIndex(of: min) ?? 0
  
  result.remove(at: idx)
  
  return result.isEmpty ? [-1] : result
}

solution([4,3,5,2, -10 ,1])
solution([10])
