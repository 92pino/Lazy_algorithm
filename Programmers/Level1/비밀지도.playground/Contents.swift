import Cocoa

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
  var answer: [String] = []
  
  let radix1 = arr1.map { e -> String in
    let res = String(e, radix: 2)
    return res.count != n ? String(repeating: "0", count: n - res.count) + res : res
  }
  
  let radix2 = arr2.map { e -> String in
    let res = String(e, radix: 2)
    return res.count != n ? String(repeating: "0", count: n - res.count) + res : res
  }
  
  for i in 0..<n {
    let a1 = radix1.map { $0.map { String($0) } }
    let a2 = radix2.map { $0.map { String($0) } }
    
    var str = ""
    for j in 0..<n {
      if (a1[i][j] == a2[i][j]) && (a1[i][j] == "0") && (a2[i][j] == "0") {
        str += " "
      } else {
        str += "#"
      }
    }
    answer.append(str)
  }
  
  return answer
}

solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])

// 비트 연산자에 대해서 공부해야됨!!!!
// 여기서는 |를 써서 둘중 하나라도 거짓이면 거짓으로 0이 반환

func solution2(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
  var answer: [String] = []
  
  for i in 0..<n {
    var bitwise = String(arr1[i] | arr2[i], radix: 2)
    bitwise = String(repeating: "0", count: n - bitwise.count) + bitwise
    answer.append(bitwise.map { $0 == "1" ? "#" : " "}.joined())
  }
  
  return answer
}
solution2(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])


// 다른 풀이를 보다 어마어마한 답변이 있어서 공부할 겸 가져와봄
func solution3(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    return arr1.enumerated().map { String($0.1 | arr2[$0.0], radix: 2).map { $0 == "1" ? "#" : " " }.joined() }.map { String(repeating: " ", count: n - $0.count) + $0 }
}
solution3(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
