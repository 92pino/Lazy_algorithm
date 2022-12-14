import Cocoa

func solution(_ n: Int) -> Int {
    let num = String(String(n, radix: 3).map { $0}.reversed())

    return Int(num, radix: 3)!
}
solution(45)
