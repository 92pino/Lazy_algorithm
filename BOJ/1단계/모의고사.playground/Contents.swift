import Cocoa

func solution(_ answers: [Int]) -> [Int] {
  let answer = (
    a: [1, 2, 3, 4, 5],
    b: [2, 1, 2, 3, 2, 4, 2, 5],
    c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
  )
  
  var point = [1:0, 2:0, 3:0]
  
  for (i, v) in answers.enumerated() {
    if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
    if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
    if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
  }
  
  print(point.sorted(by: <).filter { $0.value == point.values.max() }.map { $0.key })
  
  return [0]
}

solution([1, 3, 2, 4, 2])
