import Cocoa

func solution(_ n: Int, _ lost: [Int], _ reverse:[Int]) -> Int {
  var students = [Int](repeating: 0, count: n)
  var r = reverse
  
  for i in lost {
    students[i - 1] -= 1
  }
  
  for i in reverse {
    students[i - 1] += 1
  }
  
  for (idx, i) in students.enumerated() {
    if i == -1 {
      if (idx > 0 && students[idx - 1] == 1) {
        students[idx - 1] -= 1
        students[idx] += 1
      } else if (idx < students.count - 1) && students[idx + 1] == 1 {
        students[idx + 1] -= 1
        students[idx] += 1
      }
    }
  }
  
  return students.filter{ $0 >= 0}.count
}

solution(5, [2, 4], [1, 3, 5])
