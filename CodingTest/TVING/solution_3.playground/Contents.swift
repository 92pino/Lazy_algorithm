import Cocoa

func solution(_ estimates:[Int], _ k:Int) -> Int {
    var result = 0
    for (index, _) in estimates.enumerated() {
        if estimates.count - index < k {
            break
        }
        
        var sum = 0
        for i in estimates[index..<index + k] {
            sum += i
        }
        
        if result < sum {
            result = sum
        }
    }
    
    return result
}

//solution([5, 1, 9, 8, 10, 5], 3)
solution([10, 1, 10, 1, 1, 4, 3, 10], 6)
