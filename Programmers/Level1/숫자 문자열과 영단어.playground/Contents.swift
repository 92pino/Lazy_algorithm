import Cocoa

func solution(_ s:String) -> Int {
    var arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var result = s
    for i in 0..<arr.count {
        print(arr[i], i)
        result = result.replacingOccurrences(of: arr[i], with: "\(i)")
    }
    
    
    return Int(result)!
}

//solution("one4seveneight")
solution("2three45sixseven")
