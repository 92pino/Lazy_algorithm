import Cocoa

func solution(_ d: [Int], _ budget: Int) -> Int {
  var arr = d.sorted()
  var count = 0
  var sum = 0
  for i in 0..<arr.count {
    sum += arr[i]
    if sum > budget {
      break
    } else {
      count += 1
    }
  }
  return 0
}
solution([1,3,2,5,4], 9)
