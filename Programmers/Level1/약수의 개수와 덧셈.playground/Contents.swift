import Cocoa

func solution(_ left:Int, _ right:Int) -> Int {
    var sum = 0
    
    for i in left...right {
        var num = 0
        
        for j in 1...i {
            if i % j == 0 { num += 1 }
        }
        
        if num % 2 == 0 {
            sum += i
        } else {
            sum -= i
        }
    }
    
    return sum
}

// 다른 사람 풀이
func solution2(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -1 }.reduce(0, +)
}

solution(13, 17)
solution(24, 27)
