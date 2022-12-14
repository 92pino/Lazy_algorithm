import Cocoa

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let a: Set = Set(lottos)
    let b: Set = Set(win_nums)
    
    var zeroCount = lottos.filter { $0 == 0 }.count
    
    let overlapCount = b.intersection(a).count
    return [ranking(num: overlapCount + zeroCount), ranking(num: overlapCount)]
}

func ranking(num: Int) -> Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}

solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19])
