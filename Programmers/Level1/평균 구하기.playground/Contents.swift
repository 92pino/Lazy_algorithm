import Cocoa

var arr = [1,2,3,4]
func solution(_ arr: [Int]) -> Double {
  var sum = 0
  arr.map { sum += $0 }
  return Double(sum) / Double(arr.count)
}
solution(arr)

func solution2(_ arr: [Int]) -> Double {
  return Double(arr.reduce(0, +)) / Double(arr.count)
}
solution2(arr)
