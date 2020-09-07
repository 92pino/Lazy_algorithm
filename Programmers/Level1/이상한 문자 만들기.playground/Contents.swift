import Cocoa

func solution(_ s: String) -> String {
  var result = ""
  let a = s.components(separatedBy: " ")
  for i in a {
    for j in 0..<Array(i).count {
      if j % 2 == 0 {
        result.append(Array(i)[j].uppercased())
      } else {
        result.append(String(Array(i)[j]).lowercased())
      }
    }
    result.append(" ")
  }
  result.removeLast()
  return result
}

solution("try hello world")
