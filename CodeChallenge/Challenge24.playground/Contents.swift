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

func challenge24(_ num: String) -> Int {
    var result = 0
    let values = num.components(separatedBy: CharacterSet.decimalDigits.inverted).flatMap { Int($0) }
    for i in values {
        result += i
    }
    return result
}
challenge24("a10b20c30")
