import UIKit

/*:
 # 2019.09.28 - Hackingwithswift
 
 ## Challenge 22 : Binary Reverse
 __Difficulty__ : Tricky
 
 create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits
 
 when you get the binary representation of a number, swift will always use as few bits as possible - make sure you pad to eight binary digits before reversing
 
 
 
 ---
 
 ### Sample input and output
 - the number 32 is 100000 in binary, and padded to eight binary digits that's 00100000.
 Reversing that binary sequence gives 00000100, which is 4.
 so, when given the input 32 your function should return 4.
 
 - The number41 is 101001 in binary, and padded to eight binary digits that 00101001.
 Reversing that binary sequence gives 10010100, which is 148. So, when given the input 41 your function should return 148.
 
 - It should go without saying that your function should be symmetrical: when fed 4 it should return 32, and when fed 148 it should return 41.
 */

// 내가 풀어본 풀이
let bitArray = [1, 2, 4, 8, 16, 32, 64, 256]

func binaryChange(num: Int) -> UInt {
    var binary = String(num, radix: 2)
    
    while binary.count < 8 {
        binary = "0" + binary
    }
    
    print(binary)
    
    var reverse = String(binary.reversed())
    
    return UInt(reverse, radix: 2)!
}
print(binaryChange(num: 32))

// 은석이형 풀이
func power_recur(x:Int, n:Int) -> Int {
    if n == 0 { return 1 } // 요구사항 1 -> 종료조건.
    else if n > 0 { // 양수
        if n % 2 == 0 { return power_recur(x: x, n: n / 2) * power_recur(x: x, n: n / 2) } // 짝수
        else { return x * power_recur(x: x, n: n-1) }
        // 홀수
        // 요구사항 2 -> n - 1 이므로 n 이 -1 씩 작아짐
    }else { return 1 / power_recur(x: x, n: -n) } // 음수
}


extension String {
    func changeInt() -> Int{
        var saveInt = 0
        var count = 0
        if type(of: Int(self) ?? 0) == Int.self {
            for x in self {
                saveInt += Int("\(x)")! * power_recur(x: 2, n: 7-count)
                count += 1
            }
        }
        return saveInt
    }
}

func reverseBinary(num:Int) -> Int {
    var binaryNumber = String(num,radix: 2)
    var widthOfBinaryNumber = binaryNumber.count
    guard widthOfBinaryNumber <= 8 else {return 0}
    let needZeroNumber = 8 - widthOfBinaryNumber
    var tempString = ""
    var result = ""
    if widthOfBinaryNumber != 8 {
        for _ in 1...needZeroNumber {
            tempString += "0"
        }
        tempString += binaryNumber
    } else {
        tempString = binaryNumber
    }
    
    result = String(tempString.reversed())
    return result.changeInt()
    
}

// 해답

func challenge22 (number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddingBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddingBinary.reversed())
    
    return UInt(reversedBinary, radix: 2)!
}

print(challenge22(number: 32))
