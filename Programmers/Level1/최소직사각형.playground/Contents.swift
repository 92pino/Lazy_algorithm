import Cocoa

func solution(_ sizes:[[Int]]) -> Int {
    let sorted = sizes.map{$0.sorted()}
    return sorted.map { $0[0]}.max()! * sorted.map { $0[1]}.max()!
}

solution([[60, 50], [30, 70], [60, 30], [80, 40]])
