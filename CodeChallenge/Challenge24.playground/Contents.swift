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

// 다른 방식

// 1
func challenge24AnswerA(string: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    for letter in string {
        let strLetter = String(letter)
        
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    
    print(sum)
    return sum
}
challenge24AnswerA(string: "a10b20c30")

// 2 - 정규식
func challenge24AnswerB(string: String) -> Int {
    let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
    let matches = regex.matches(in: string, options: [], range: NSRange(location: 0, length: string.utf16.count))
    
    let allNumbers = matches.compactMap { Int((string as NSString).substring(with: $0.range)) }

    print(allNumbers.reduce(0, +))
    
    return allNumbers.reduce(0, +)
}
challenge24AnswerB(string: "a10b20c30")

// 3 - 정규식
func challenge24AnswerC(string: String) -> Int {
    return string.replacingOccurrences(of: "\\D+", with: "-", options: .regularExpression)
        .split(separator: "-")
        .reduce(0) { $0 + Int(String($1))! }
}
challenge24AnswerC(string: "a10b20c30")
