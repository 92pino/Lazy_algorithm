import Cocoa

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    return Int64(max((count + 1) * count / 2 * price - money, 0))
}

solution(3, 20, 4)
