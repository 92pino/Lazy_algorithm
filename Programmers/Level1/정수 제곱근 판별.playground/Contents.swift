import Cocoa

// 숫자가 클 경우 비효율 적이다
// for문을 그 숫자까지 다 돌려야되기때문에 패스
func solution(_ n:Int64) -> Int64 {
  var result = 0
  for i in 0...n {
    if i * i == n {
      result = Int((i + 1) * (i + 1))
      break;
    } else {
      result = -1
    }
  }
  return Int64(result)
}

solution(121) // 144 ==> (11 + 1)의 제곱근

func solution2(_ n:Int64) -> Int64 {
  var num = 1
  while num * num <= n {
    if num * num == n {
      return Int64((num + 1) * (num + 1))
    }
    num += 1
  }
  return -1
}

solution2(121)
