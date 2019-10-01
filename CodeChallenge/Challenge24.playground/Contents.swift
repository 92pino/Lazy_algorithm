import UIKit

/*:
 # 2019.10.01 - Hackingwithswift
 
 ## Challenge 24 : Add numbers inside a string
 __Difficulty__ : Tricky
 
 Given a string that contains both letters and numbers, write a function that pulls out all the members then returns their sum
 
 ---
 
 ### Sample input and output
 - The string "a1b2c3" sould return 6(1 + 2 + 3)
 
 - The string "a10b20c30" sould return 60 (10 + 20 + 30)
 
 - The string "h8ers" should return "8"
 */

func challenge24a(_ num: String) -> Int {
    var result = 0
    let values = num.components(separatedBy: CharacterSet.decimalDigits.inverted).flatMap { Int($0) }
    for i in values {
        result += i
    }
    return result
}
challenge24a("a10b20c30")
challenge24a("a1b2c3")
challenge24a("h8ers")

// 정규식으로 풀어보자
func challenge24b(for regex: String, in text: String) -> [String] {
    do {
        let regex = try NSRegularExpression(pattern: regex)
        let results = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
        print(results)
        return results.map {
            String(text[Range($0.range, in: text)!])
        }
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}

let string = "a10b20c30"

var number = challenge24b(for: "[0-9]{1,2}", in: string)
var resultb = 0

for i in number {
    resultb += Int(i)!
}

print(resultb)
