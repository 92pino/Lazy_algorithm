import Cocoa

func solution(_ num: Int) -> Int {
  var res = num
  var count = 0
  
  while res != 1 {
    if res % 2 == 0 {
      res /= 2
    } else {
      res = res * 3 + 1
    }
    count += 1
  }
  
  return count > 500 ? -1 : count
}

solution(6)
