import Cocoa

func solution(_ x: Int, _ n: Int) -> [Int64] {
  var arr: [Int64] = []
  for i in 1...n {
    arr.append(Int64(i) * Int64(x))
  }
  return arr
}

// 2부터 시작해 2씩 증가하는 숫자 5개를 가진 배열
solution(2, 5)
