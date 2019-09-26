import UIKit

/*:
 # 2019.09.27 - Hackingwithswift
 
 ## Challenge 21 : Counting Binary onew
 __Difficulty__ : Tricky
 
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of onew in its binary representation. If either number is not possible, return nil for it.
 
 ---
 
 ### Sample input and output
 - The numer 12 is 1100 in binary, so it has tow 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
 
 - The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest 26, which is 11010.
*/
// 내 풀이
// nonzeroBitCount를 풀어서 checkOneCount라는 함수로 만듬.

// 비트 연산자
// 1의 개수를 체크해주는 함수
func checkOneCount(num: Int) -> Int {
    let str = String(num, radix: 2)
    
    var count = 0
    
    for i in str {
        if i == "1" {
            count += 1
        }
    }
    
    return count
}

func countingBinary(num: Int) -> (Int, Int) {
    let nonZeroCount = checkOneCount(num: num)
    
    var highest = num + 1
    var lowest = num - 1
    
    while checkOneCount(num: lowest) != nonZeroCount {
        lowest -= 1
    }
    
    while checkOneCount(num: highest) != nonZeroCount {
        highest += 1
    }
    
    return (highest, lowest)
}

print(countingBinary(num: 12))

// 다른사람 풀이

func countingBinary2(num: Int) -> (Int, Int) {
    // nonzeroBitCount == 0을 제외한 Bit의 갯수
    let nonzeroCount = num.nonzeroBitCount
    var highest = num + 1
    var lowest = num - 1
    
    while lowest.nonzeroBitCount != nonzeroCount {
        lowest -= 1
    }
    
    while highest.nonzeroBitCount != nonzeroCount {
        highest += 1
    }
    
    return (lowest, highest)
}

print(countingBinary2(num: 12))
