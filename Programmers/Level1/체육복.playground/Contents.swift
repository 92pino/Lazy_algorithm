import UIKit

func solution(_ n: Int, _ lost: [Int], _ reverse: [Int]) -> Int {
  var students = Array(repeating: 0, count: n)
  var result = 0
  
  for index in 1...n {
    if lost.contains(index) && reverse.contains(index) {
      students[index-1] = 1
    } else if lost.contains(index) {
      students[index-1] = 0
    } else if reverse.contains(index) {
      students[index-1] = 2
    }
  }
  
  for (index, student) in students.enumerated() {
    if student == 2 {
      if index > 0 && students[index-1] == 0 {
        students[index-1] = 1
        students[index] = 1
      } else if index < n - 1 && students[index+1] == 0 {
        students[index+1] = 1
        students[index] = 1
      }
    }
  }
  
  for student in students {
    if student > 0 {
      result += 1
    }
  }
  
  return result
}
solution(5, [2, 4], [1, 3, 5])
solution(5, [3], [1])
