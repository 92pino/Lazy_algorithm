import Cocoa

func solution(_ n: Int64) -> Int64 {
  return Int64(String(Array(String(n)).sorted(by: >)))!
}

solution(118372)
