import Cocoa

func solution(_ compressed:String) -> String {
    let charArray = compressed.map { $0 }
    var stack: [String] = []
    var completeString = ""
    for (index, char) in charArray.enumerated() {
        switch char {
        case "(":
            completeString += "("
        case ")":
            completeString += ")"
        default:
            completeString += String(char)
        }
    }
    
    print(stack, completeString)
    
    return ""
}

//solution("3(hi)")
solution("2(3(hi)co)")
//solution("10(p)")
//solution("2(2(hi)2(co))x2(bo)")
