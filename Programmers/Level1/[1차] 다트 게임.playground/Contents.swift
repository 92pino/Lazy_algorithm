import Cocoa

func solution(_ dartResult:String) -> Int {
    let numbers = dartResult.split(whereSeparator: {$0.isLetter || $0 == "*" || $0 == "#"})
    let letters = dartResult.split(whereSeparator: {$0.isNumber})
    print(numbers, letters)
    
    var result = numbers.map { Int($0)! }
    
    for (index, element) in letters.enumerated() {
        for c in String(element) {
            switch c {
            case "S":
                break
            case "D":
                result[index] *= result[index]
            case "T":
                result[index] *= result[index] * result[index]
            case "*":
                if index != 0 {
                    result [index - 1] *= 2
                }
                
                result[index] *= 2
            case "#":
                result[index] *= -1
            default:
                print("error")
            }
            
        }
    }
    
    return result.reduce(0, +)
}
solution("1S2D*3T") // 37
