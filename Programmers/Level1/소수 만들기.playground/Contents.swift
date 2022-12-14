import Cocoa

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var sum = [Int]()
    
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count {
            for k in j+1..<nums.count {
                sum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    answer = sum.filter { isPrimeNum(n: $0) }.count

    return answer
}

func isPrimeNum(n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

solution([1,2,7,6,4])
