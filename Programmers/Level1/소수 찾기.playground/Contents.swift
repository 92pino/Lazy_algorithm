import Cocoa

func solution(_ n:Int) -> Int {
    var isPrimeArray = Array(repeating: true, count: n + 1)
    var primeCount = 0
    
    isPrimeArray[0] = false
    isPrimeArray[1] = false
    
    for i in 0...n {
        if isPrimeArray[i] {
            for j in stride(from: i * 2, through: n, by: i) {
                isPrimeArray[j] = false
            }
            
            primeCount += 1
        }
    }
    
    return primeCount
}

solution(10)
