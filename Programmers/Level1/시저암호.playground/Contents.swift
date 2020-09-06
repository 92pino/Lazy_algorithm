import Cocoa

func solution(_ s: String, _ n: Int) -> String {
  var lower: Array = Array("abcdefghijklmnopqrstuvwxyz")
  var upper: Array = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
  var ss = Array(s)
  var result = ""
  
  for i in ss {
    if upper.contains(i) {
      // 대문자
      var indexNum = upper.index(of: i)! + n
      
      if indexNum > 25 {
        indexNum = indexNum - 26
      }
      
      result.append(upper[indexNum])
    } else if (lower.contains(i)) {
      // 소문자
      var indexNum = lower.index(of: i)! + n
      
      if indexNum > 25 {
        indexNum = indexNum - 26
      }
      result.append(lower[indexNum])
    } else {
      // 공백일 경우
      result.append(i)
    }
  }
  
  return result
}

solution("AB", 1)
solution("AbcD ZZa", 5)
