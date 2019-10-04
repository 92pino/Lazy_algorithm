import UIKit

/*:
 # 2019.10.05 - Hackingwithswift
 
 ## Challenge 25 : Calculate a square root by hand
 __Difficulty__ : Taxing
 
 Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().
 
 ---
 
 ### Sample input and output
 - The number 9 should return 3.
 - The number 16777216 should return 4096.
 - The number 16 should return 4.
 - The number 15 should return 3.
*/

// 1) sqrt를 사용한 방법
func solution(_ n: Int) -> Int {
    var squareRoot = Int(Double(n).squareRoot())

    return squareRoot
}
solution(16)

// 2) sqrt 없이 해결 방법
func solution2(_ n: Int) -> Int {
    var temp = 0
    
    for i in 1..<n {
        if i * i <= n {
            temp = i
        } else {
            break
        }
    }
    
    return temp
}

solution2(15)
