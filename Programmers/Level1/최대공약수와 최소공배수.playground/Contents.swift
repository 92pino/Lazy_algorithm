import Cocoa

// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
  if b == 0 {
    return a
  } else {
    return gcd(b, a%b)
  }
}

// 최소공배수
func lcm(_ m: Int, _ n: Int, _ g: Int) -> Int {
  return m * n / g
}

func solution(_ n: Int, _ m: Int) -> [Int] {
  let g = gcd(n, m)
  return [g, lcm(n, m, g)]
}

solution(3, 12)
