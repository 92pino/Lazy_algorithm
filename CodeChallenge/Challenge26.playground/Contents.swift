import UIKit

/*:
 # 2019.10.08 - Hackingwithswift
 
 ## Challenge 26 : Subtract without subtract
 __Difficulty__ : Taxing
 
 Create a function that subtracts one positive integer from another, without using -.
 
 ---
 
 ### Sample input and output
 - The code challenge26(subtract: 5, from: 9) should return 4.
 - The code challenge26(subtract: 10, from: 30) should return 20
 
*/
// 내가 푼 방식
func challenge26(subtract: Int, from: Int) -> Int {
    return (subtract..<from).count
}

print(challenge26(subtract: 10, from: 30))
print(challenge26(subtract: 5, from: 9))

// 해답
func challenge26a(subtract: Int, from: Int) -> Int {
    return from + -subtract
}
challenge26a(subtract: 10, from: 30)

func challenge26b(subtract: Int, from: Int) -> Int {
    return from + (-1 * subtract)
}
challenge26b(subtract: 10, from: 30)
