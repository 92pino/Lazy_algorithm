import Cocoa

func solution(_ arr:[Int]) -> Int {
    let a = arr.map { String($0) }
    var arr: Set<String> = []
    
    a.forEach { b in
        let chaArr = b.map { String($0) }.map { str in
            return Int(str)!
        }.sorted()
        
        let numArray = chaArr.map { String($0) }
        let ab = numArray.joined(separator: "")
        arr.insert(ab)
    }
    
    return arr.count
}

solution([112, 1814, 121, 1481, 1184])
solution([123, 456, 789, 321, 654, 987])
solution([1, 2, 3, 1, 2, 3, 4])
solution([123, 234, 213, 432, 234, 1234, 2341, 12345, 324])

solution([1, 1, 1, 1, 1, 1, 1]) // 예외 케이스
solution([10, 1])   // 예외케이스
