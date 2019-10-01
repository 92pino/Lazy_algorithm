import UIKit

/*:
 # 2019.09.30 - Hackingwithswift
 
 ## Challenge 23 : Integer disguised as string
 __Difficulty__ : Tricky
 
 Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
 
 ---
 
 ### Sample input and output
 - The input "01010101" should return true.
 
 - The input "123456789" should return true.
 
 - The letter "9223372036854775808" should return true.
 
 - The letter "1.01" should return false; "." is not a number
 */

func challenge23(_ num: String) -> Bool {
    return Int(num) != nil
    
//    if Int(num) != nil {
//        return true
//    } else {
//        return false
//    }
}
challenge23("123456789")

// 정규식 도전!!!
func _challenge23(_ num: String, filter: String = "[a-zA-Z0-9가-힣ㄱ-ㅎㅏ-ㅣ\\s]") -> Bool {
    
    let regex = try! NSRegularExpression(pattern: filter, options: [])
    
    let list = regex.matches(in: num, options: [], range: NSRange.init(location: 0, length: num.count))
    print(list)

    return true
}
_challenge23("1.234")
